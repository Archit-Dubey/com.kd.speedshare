package com.genonbeta.TrebleShot.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SwitchCompat;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.callback.OnDeviceSelectedListener;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.TrebleShot.util.UpdateUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.io.DocumentFile;
import com.kd.speedshare.R;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.SocketAddress;
import java.util.List;
import org.json.JSONObject;

public class DeviceInfoDialog extends AlertDialog.Builder {
    public static final String TAG = DeviceInfoDialog.class.getSimpleName();

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeviceInfoDialog(Activity activity, AccessDatabase accessDatabase, NetworkDevice networkDevice) {
        super(activity);
        final Activity activity2 = activity;
        final AccessDatabase accessDatabase2 = accessDatabase;
        final NetworkDevice networkDevice2 = networkDevice;
        try {
            accessDatabase.reconstruct(networkDevice);
            View inflate = LayoutInflater.from(activity).inflate(R.layout.layout_device_info, (ViewGroup) null);
            NetworkDevice localDevice = AppUtils.getLocalDevice(activity);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.image);
            TextView textView = (TextView) inflate.findViewById(R.id.text1);
            TextView textView2 = (TextView) inflate.findViewById(R.id.notSupportedText);
            TextView textView3 = (TextView) inflate.findViewById(R.id.modelText);
            TextView textView4 = (TextView) inflate.findViewById(R.id.versionText);
            SwitchCompat switchCompat = (SwitchCompat) inflate.findViewById(R.id.accessSwitch);
            final SwitchCompat switchCompat2 = (SwitchCompat) inflate.findViewById(R.id.trustSwitch);
            boolean z = false;
            if (networkDevice2.versionNumber < 62) {
                textView2.setVisibility(0);
            }
            if (localDevice.versionNumber < networkDevice2.versionNumber) {
                setNeutralButton((int) R.string.butn_update, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        new EstablishConnectionDialog(activity2, networkDevice2, new OnDeviceSelectedListener() {
                            public void onDeviceSelected(NetworkDevice.Connection connection, List<NetworkDevice.Connection> list) {
                                DeviceInfoDialog.this.runReceiveTask(activity2, networkDevice2, connection);
                            }
                        }).show();
                    }
                });
            }
            NetworkDeviceLoader.showPictureIntoView(networkDevice2, imageView, AppUtils.getDefaultIconBuilder(activity));
            textView.setText(networkDevice2.nickname);
            textView3.setText(String.format("%s %s", new Object[]{networkDevice2.brand.toUpperCase(), networkDevice2.model.toUpperCase()}));
            textView4.setText(networkDevice2.versionName);
            switchCompat.setChecked(!networkDevice2.isRestricted);
            switchCompat2.setEnabled(!networkDevice2.isRestricted ? true : z);
            switchCompat2.setChecked(networkDevice2.isTrusted);
            switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    networkDevice2.isRestricted = !z;
                    accessDatabase2.publish((DatabaseObject) networkDevice2);
                    switchCompat2.setEnabled(z);
                }
            });
            switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    networkDevice2.isTrusted = z;
                    accessDatabase2.publish((DatabaseObject) networkDevice2);
                }
            });
            setView(inflate);
            setPositiveButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
            setNegativeButton((int) R.string.butn_remove, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    new RemoveDeviceDialog(activity2, networkDevice2).show();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void runReceiveTask(final Activity activity, final NetworkDevice networkDevice, final NetworkDevice.Connection connection) {
        new WorkerService.RunningTask() {
            public void onRun() {
                try {
                    publishStatusText(getService().getString(R.string.mesg_waiting));
                    DeviceInfoDialog.this.getContext();
                    final DocumentFile receiveUpdate = UpdateUtils.receiveUpdate(activity, networkDevice, getInterrupter(), new UpdateUtils.OnConnectionReadyListener() {
                        public void onConnectionReady(ServerSocket serverSocket) {
                            CoolSocket.connect(new CoolSocket.Client.ConnectionHandler() {
                                public void onConnect(CoolSocket.Client client) {
                                    try {
                                        CoolSocket.ActiveConnection connect = client.connect((SocketAddress) new InetSocketAddress(connection.ipAddress, AppConfig.SERVER_PORT_COMMUNICATION), 5000);
                                        connect.reply(new JSONObject().put(Keyword.REQUEST, (Object) Keyword.BACK_COMP_REQUEST_SEND_UPDATE).toString());
                                        JSONObject jSONObject = new JSONObject(connect.receive().response);
                                        if (!jSONObject.has(Keyword.RESULT) || !jSONObject.getBoolean(Keyword.RESULT)) {
                                            throw new Exception("Not the answer we were looking for.");
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        AnonymousClass5.this.getInterrupter().interrupt(false);
                                    }
                                }
                            });
                        }
                    });
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            if (activity.isFinishing()) {
                                return;
                            }
                            if (receiveUpdate == null) {
                                new AlertDialog.Builder(activity).setTitle((int) R.string.text_error).setMessage((int) R.string.mesg_somethingWentWrong).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        DeviceInfoDialog.this.runReceiveTask(activity, networkDevice, connection);
                                    }
                                }).show();
                            } else {
                                new AlertDialog.Builder(activity).setTitle((int) R.string.text_taskCompleted).setMessage((int) R.string.mesg_updateDownloadComplete).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_open, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        FileUtils.openUriForeground(activity, receiveUpdate);
                                    }
                                }).show();
                            }
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.setTitle(getContext().getString(R.string.mesg_ongoingUpdateDownload)).run(activity);
    }
}
