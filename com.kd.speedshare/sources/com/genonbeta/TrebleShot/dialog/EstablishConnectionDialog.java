package com.genonbeta.TrebleShot.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.app.ProgressDialog;
import com.genonbeta.TrebleShot.callback.OnDeviceSelectedListener;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.CommunicationBridge;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.util.Interrupter;
import com.genonbeta.android.framework.util.MathUtils;
import com.kd.speedshare.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class EstablishConnectionDialog extends ProgressDialog {
    private WorkerService.RunningTask mTask;

    public EstablishConnectionDialog(Activity activity, NetworkDevice networkDevice, OnDeviceSelectedListener onDeviceSelectedListener) {
        super(activity);
        final Interrupter interrupter = new Interrupter();
        setTitle((int) R.string.text_automaticNetworkConnectionOngoing);
        setCancelable(false);
        setProgressStyle(1);
        setButton(-2, (CharSequence) getContext().getString(R.string.butn_cancel), (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                interrupter.interrupt();
            }
        });
        final Activity activity2 = activity;
        final NetworkDevice networkDevice2 = networkDevice;
        final OnDeviceSelectedListener onDeviceSelectedListener2 = onDeviceSelectedListener;
        this.mTask = new WorkerService.RunningTask() {
            /* access modifiers changed from: protected */
            public void onRun() {
                setInterrupter(interrupter);
                publishStatusText(getService().getString(R.string.mesg_communicating));
                final ArrayList arrayList = new ArrayList();
                final ArrayList<ConnectionResult> arrayList2 = new ArrayList<>();
                final List<NetworkDevice.Connection> castQuery = AppUtils.getDatabase(activity2).castQuery(new SQLQuery.Select(AccessDatabase.TABLE_DEVICECONNECTION, new String[0]).setWhere("deviceId=?", networkDevice2.deviceId).setOrderBy("lastCheckedDate DESC"), NetworkDevice.Connection.class);
                EstablishConnectionDialog.this.setMax(castQuery.size());
                for (NetworkDevice.Connection connectionResult : castQuery) {
                    arrayList2.add(new ConnectionResult(connectionResult));
                }
                for (final ConnectionResult connectionResult2 : arrayList2) {
                    if (getInterrupter().interrupted()) {
                        break;
                    }
                    publishStatusText(connectionResult2.connection.adapterName);
                    EstablishConnectionDialog establishConnectionDialog = EstablishConnectionDialog.this;
                    establishConnectionDialog.setProgress(establishConnectionDialog.getProgress() + 1);
                    Integer num = (Integer) CommunicationBridge.connect(AppUtils.getDatabase(activity2), Integer.class, (CommunicationBridge.Client.ConnectionHandler) new CommunicationBridge.Client.ConnectionHandler() {
                        public void onConnect(CommunicationBridge.Client client) {
                            connectionResult2.pingTime = -1;
                            try {
                                long currentTimeMillis = System.currentTimeMillis();
                                final CoolSocket.ActiveConnection connect = client.connect(connectionResult2.connection);
                                AnonymousClass1 r3 = new Interrupter.Closer() {
                                    public void onClose(boolean z) {
                                        try {
                                            connect.getSocket().close();
                                        } catch (IOException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                };
                                AnonymousClass2.this.getInterrupter().addCloser(r3);
                                client.handshake(connect, true);
                                client.updateDeviceIfOkay(connect, networkDevice2);
                                AnonymousClass2.this.getInterrupter().removeCloser(r3);
                                connectionResult2.pingTime = (int) (System.currentTimeMillis() - currentTimeMillis);
                            } catch (Exception e) {
                                e.printStackTrace();
                            } catch (Throwable th) {
                                client.setReturn(Integer.valueOf(connectionResult2.pingTime));
                                throw th;
                            }
                            client.setReturn(Integer.valueOf(connectionResult2.pingTime));
                        }
                    });
                    if (num != null && num.intValue() > -1) {
                        arrayList.add(connectionResult2);
                    }
                }
                EstablishConnectionDialog.this.dismiss();
                AnonymousClass2 r3 = new Comparator<ConnectionResult>() {
                    public int compare(ConnectionResult connectionResult, ConnectionResult connectionResult2) {
                        if (connectionResult.pingTime < 0 || connectionResult2.pingTime < 0) {
                            return MathUtils.compare((long) connectionResult.pingTime, (long) connectionResult2.pingTime);
                        }
                        return MathUtils.compare((long) connectionResult2.pingTime, (long) connectionResult.pingTime);
                    }
                };
                Collections.sort(arrayList, r3);
                Collections.sort(arrayList2, r3);
                Activity activity = activity2;
                if (activity != null && !activity.isFinishing()) {
                    activity2.runOnUiThread(new Runnable() {
                        public void run() {
                            if (onDeviceSelectedListener2 == null) {
                                new ConnectionTestDialog(activity2, networkDevice2, arrayList2).show();
                            } else if (AnonymousClass2.this.getInterrupter().interrupted()) {
                            } else {
                                if (arrayList.size() < 1) {
                                    new AlertDialog.Builder(activity2).setTitle((int) R.string.text_error).setMessage((int) R.string.text_automaticNetworkConnectionFailed).setNeutralButton((int) R.string.butn_choose, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            new ConnectionChooserDialog(activity2, networkDevice2, onDeviceSelectedListener2).show();
                                        }
                                    }).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            EstablishConnectionDialog.this.show();
                                        }
                                    }).show();
                                    return;
                                }
                                onDeviceSelectedListener2.onDeviceSelected(((ConnectionResult) arrayList.get(0)).connection, castQuery);
                                EstablishConnectionDialog.this.dismiss();
                            }
                        }
                    });
                }
            }
        };
    }

    public void show() {
        super.show();
        this.mTask.setTitle(getContext().getString(R.string.text_connectDevices)).run(getContext());
    }

    public static class ConnectionResult {
        public NetworkDevice.Connection connection;
        public int pingTime = -1;

        public ConnectionResult(NetworkDevice.Connection connection2) {
            this.connection = connection2;
        }
    }
}
