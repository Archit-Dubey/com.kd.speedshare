package com.genonbeta.TrebleShot.task;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.activity.AddDevicesToTransferActivity;
import com.genonbeta.TrebleShot.adapter.NetworkDeviceListAdapter;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.CommunicationBridge;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLiteDatabase;
import com.genonbeta.android.framework.util.Interrupter;
import com.kd.speedshare.R;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class AddDeviceRunningTask extends WorkerService.RunningTask<AddDevicesToTransferActivity> {
    /* access modifiers changed from: private */
    public NetworkDevice.Connection mConnection;
    /* access modifiers changed from: private */
    public NetworkDevice mDevice;
    /* access modifiers changed from: private */
    public TransferGroup mGroup;

    public AddDeviceRunningTask(TransferGroup transferGroup, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
        this.mGroup = transferGroup;
        this.mDevice = networkDevice;
        this.mConnection = connection;
    }

    public void onRun() {
        final Context applicationContext = getService().getApplicationContext();
        final AnonymousClass1 r1 = new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                    ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).doCommunicate(AddDeviceRunningTask.this.mDevice, AddDeviceRunningTask.this.mConnection);
                }
            }
        };
        CommunicationBridge.connect(AppUtils.getDatabase(getService()), true, (CommunicationBridge.Client.ConnectionHandler) new CommunicationBridge.Client.ConnectionHandler() {
            public void onConnect(CommunicationBridge.Client client) {
                AddDevicesToTransferActivity addDevicesToTransferActivity;
                AnonymousClass5 r0;
                boolean z;
                client.setDevice(AddDeviceRunningTask.this.mDevice);
                try {
                    JSONObject jSONObject = new JSONObject();
                    final TransferGroup.Assignee assignee = new TransferGroup.Assignee(AddDeviceRunningTask.this.mGroup, AddDeviceRunningTask.this.mDevice, AddDeviceRunningTask.this.mConnection);
                    ArrayList arrayList = new ArrayList();
                    ArrayList<TransferObject> arrayList2 = new ArrayList<>(AppUtils.getDatabase(applicationContext).castQuery(new SQLQuery.Select(AccessDatabase.DIVIS_TRANSFER, new String[0]).setWhere("groupId=? AND type=?", String.valueOf(AddDeviceRunningTask.this.mGroup.groupId), TransferObject.Type.OUTGOING.toString()), TransferObject.class));
                    AnonymousClass1 r5 = new SQLiteDatabase.ProgressUpdater() {
                        public void onProgressChange(int i, int i2) {
                            if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                                ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).updateProgress(i, i2);
                            }
                        }

                        public boolean onProgressState() {
                            return !AddDeviceRunningTask.this.getInterrupter().interrupted();
                        }
                    };
                    try {
                        AppUtils.getDatabase(applicationContext).reconstruct(new TransferGroup.Assignee(assignee.groupId, assignee.deviceId));
                        z = true;
                    } catch (Exception unused) {
                        z = false;
                    }
                    if ((AddDeviceRunningTask.this.mDevice instanceof NetworkDeviceListAdapter.HotspotNetwork) && ((NetworkDeviceListAdapter.HotspotNetwork) AddDeviceRunningTask.this.mDevice).qrConnection) {
                        jSONObject.put(Keyword.FLAG_TRANSFER_QR_CONNECTION, true);
                    }
                    jSONObject.put(Keyword.REQUEST, (Object) Keyword.REQUEST_TRANSFER);
                    jSONObject.put("groupId", AddDeviceRunningTask.this.mGroup.groupId);
                    if (arrayList2.size() != 0) {
                        JSONArray jSONArray = new JSONArray();
                        for (TransferObject transferObject : arrayList2) {
                            AddDeviceRunningTask.this.publishStatusText(transferObject.friendlyName);
                            TransferObject transferObject2 = new TransferObject(AccessDatabase.convertValues(transferObject.getValues()));
                            if (!AddDeviceRunningTask.this.getInterrupter().interrupted()) {
                                transferObject2.deviceId = assignee.deviceId;
                                transferObject2.flag = TransferObject.Flag.PENDING;
                                transferObject2.accessPort = 0;
                                transferObject2.skippedBytes = 0;
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put("file", (Object) transferObject2.friendlyName);
                                    jSONObject2.put(Keyword.INDEX_FILE_SIZE, transferObject2.fileSize);
                                    jSONObject2.put(Keyword.TRANSFER_REQUEST_ID, transferObject2.requestId);
                                    jSONObject2.put(Keyword.INDEX_FILE_MIME, (Object) transferObject2.fileMimeType);
                                    if (transferObject2.directory != null) {
                                        jSONObject2.put("directory", (Object) transferObject2.directory);
                                    }
                                    jSONArray.put((Object) jSONObject2);
                                    arrayList.add(transferObject2);
                                } catch (Exception e) {
                                    String str = AddDevicesToTransferActivity.TAG;
                                    Log.e(str, "Sender error on fileUri: " + e.getClass().getName() + " : " + transferObject2.friendlyName);
                                }
                            } else {
                                throw new InterruptedException("Interrupted by user");
                            }
                        }
                        jSONObject.put(Keyword.FILES_INDEX, (Object) jSONArray.toString());
                        AddDeviceRunningTask.this.getInterrupter().addCloser(new Interrupter.Closer() {
                            public void onClose(boolean z) {
                                AppUtils.getDatabase(applicationContext).remove((DatabaseObject) assignee);
                            }
                        });
                        final CoolSocket.ActiveConnection communicate = client.communicate(AddDeviceRunningTask.this.mDevice, AddDeviceRunningTask.this.mConnection);
                        AddDeviceRunningTask.this.getInterrupter().addCloser(new Interrupter.Closer() {
                            public void onClose(boolean z) {
                                try {
                                    communicate.getSocket().close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                        communicate.reply(jSONObject.toString());
                        CoolSocket.ActiveConnection.Response receive = communicate.receive();
                        communicate.getSocket().close();
                        JSONObject jSONObject3 = new JSONObject(receive.response);
                        if (jSONObject3.has(Keyword.RESULT) && jSONObject3.getBoolean(Keyword.RESULT)) {
                            AddDeviceRunningTask.this.publishStatusText(applicationContext.getString(R.string.mesg_organizingFiles));
                            if (z) {
                                AppUtils.getDatabase(applicationContext).publish((DatabaseObject) assignee);
                            } else {
                                AppUtils.getDatabase(applicationContext).insert((DatabaseObject) assignee);
                            }
                            if (z) {
                                AppUtils.getDatabase(applicationContext).publish(arrayList, r5);
                            } else {
                                AppUtils.getDatabase(applicationContext).insert(arrayList, r5);
                            }
                            if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                                ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).setResult(-1, new Intent().putExtra("extraDeviceId", assignee.deviceId).putExtra("extraGroupId", assignee.groupId));
                                ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).finish();
                            }
                        } else if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                            UIConnectionUtils.showConnectionRejectionInformation((Activity) AddDeviceRunningTask.this.getAnchorListener(), AddDeviceRunningTask.this.mDevice, jSONObject3, r1);
                        }
                        if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                            addDevicesToTransferActivity = (AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener();
                            r0 = new Runnable() {
                                public void run() {
                                    ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).resetStatusViews();
                                }
                            };
                            addDevicesToTransferActivity.runOnUiThread(r0);
                            return;
                        }
                        return;
                    }
                    throw new Exception("Empty share holder id: " + AddDeviceRunningTask.this.mGroup.groupId);
                } catch (Exception e2) {
                    if (!(e2 instanceof InterruptedException)) {
                        e2.printStackTrace();
                        if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                            ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).runOnUiThread(new Runnable() {
                                public void run() {
                                    new AlertDialog.Builder((Context) AddDeviceRunningTask.this.getAnchorListener()).setMessage((CharSequence) applicationContext.getString(R.string.mesg_fileSendError, new Object[]{applicationContext.getString(R.string.mesg_connectionProblem)})).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, r1).show();
                                }
                            });
                        }
                    }
                    if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                        addDevicesToTransferActivity = (AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener();
                        r0 = new Runnable() {
                            public void run() {
                                ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).resetStatusViews();
                            }
                        };
                    }
                } catch (Throwable th) {
                    if (AddDeviceRunningTask.this.getAnchorListener() != null) {
                        ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).runOnUiThread(new Runnable() {
                            public void run() {
                                ((AddDevicesToTransferActivity) AddDeviceRunningTask.this.getAnchorListener()).resetStatusViews();
                            }
                        });
                    }
                    throw th;
                }
            }
        });
    }
}
