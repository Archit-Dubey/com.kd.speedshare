package com.genonbeta.TrebleShot.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentActivity;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.callback.OnDeviceSelectedListener;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.ConnectionChooserDialog;
import com.genonbeta.TrebleShot.dialog.EstablishConnectionDialog;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.CommunicationBridge;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLiteDatabase;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.genonbeta.android.framework.util.Interrupter;
import com.kd.speedshare.R;
import java.io.IOException;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class TransferUtils {
    public static final String TAG = TransferUtils.class.getSimpleName();
    public static final int TASK_START_TRANSFER_WITH_OVERVIEW = 1;

    public interface ConnectionUpdatedListener {
        void onConnectionUpdated(NetworkDevice.Connection connection, TransferGroup.Assignee assignee);
    }

    public static void changeConnection(FragmentActivity fragmentActivity, final AccessDatabase accessDatabase, final TransferGroup transferGroup, final NetworkDevice networkDevice, final ConnectionUpdatedListener connectionUpdatedListener) {
        new ConnectionChooserDialog(fragmentActivity, networkDevice, new OnDeviceSelectedListener() {
            public void onDeviceSelected(NetworkDevice.Connection connection, List<NetworkDevice.Connection> list) {
                TransferGroup.Assignee assignee = new TransferGroup.Assignee(transferGroup, networkDevice, connection);
                accessDatabase.publish((DatabaseObject) assignee);
                ConnectionUpdatedListener connectionUpdatedListener = connectionUpdatedListener;
                if (connectionUpdatedListener != null) {
                    connectionUpdatedListener.onConnectionUpdated(connection, assignee);
                }
            }
        }).show();
    }

    public static long createUniqueTransferId(long j, String str, TransferObject.Type type) {
        return (long) String.format("%d_%s_%s", new Object[]{Long.valueOf(j), str, type}).hashCode();
    }

    public static SQLQuery.Select createTransferSelection(long j, String str) {
        return new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere(String.format("%s = ? AND %s = ?", new Object[]{"groupId", "deviceId"}), String.valueOf(j), str);
    }

    public static SQLQuery.Select createTransferSelection(long j, String str, TransferObject.Flag flag, boolean z) {
        SQLQuery.Select select = new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]);
        StringBuilder sb = new StringBuilder();
        sb.append("%s = ? AND %s = ? AND %s ");
        sb.append(z ? "=" : "!=");
        sb.append(" ?");
        return select.setWhere(String.format(sb.toString(), new Object[]{"groupId", "deviceId", "flag"}), String.valueOf(j), str, flag.toString());
    }

    public static ShowingAssignee getFirstAssignee(AccessDatabase accessDatabase, long j) {
        List<ShowingAssignee> castQuery = accessDatabase.castQuery(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERASSIGNEE, new String[0]).setWhere("groupId=?", String.valueOf(j)), ShowingAssignee.class, new SQLiteDatabase.CastQueryListener<ShowingAssignee>() {
            public void onObjectReconstructed(SQLiteDatabase sQLiteDatabase, CursorItem cursorItem, ShowingAssignee showingAssignee) {
                showingAssignee.device = new NetworkDevice(showingAssignee.deviceId);
                showingAssignee.connection = new NetworkDevice.Connection((TransferGroup.Assignee) showingAssignee);
                try {
                    sQLiteDatabase.reconstruct(showingAssignee.device);
                    sQLiteDatabase.reconstruct(showingAssignee.connection);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        if (castQuery.size() == 0) {
            return null;
        }
        return castQuery.get(0);
    }

    public static ShowingAssignee getFirstAssignee(SnackbarSupport snackbarSupport, AccessDatabase accessDatabase, long j) {
        ShowingAssignee firstAssignee = getFirstAssignee(accessDatabase, j);
        if (firstAssignee != null) {
            return firstAssignee;
        }
        snackbarSupport.createSnackbar(R.string.mesg_noReceiverOrSender, new Object[0]).show();
        return null;
    }

    public static TransferObject fetchFirstTransfer(Context context, long j, TransferObject.Type type) {
        CursorItem firstFromTable = AppUtils.getDatabase(context).getFirstFromTable(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere("type=? AND groupId=?", type.toString(), String.valueOf(j)).setOrderBy(String.format("`%s` ASC, `%s` ASC", new Object[]{"directory", "name"})));
        if (firstFromTable == null) {
            return null;
        }
        return new TransferObject(firstFromTable);
    }

    public static TransferObject fetchValidTransfer(Context context, long j, TransferObject.Type type) {
        CursorItem firstFromTable = AppUtils.getDatabase(context).getFirstFromTable(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere("type=? AND groupId=? AND flag=?", type.toString(), String.valueOf(j), TransferObject.Flag.PENDING.toString()).setOrderBy(String.format("`%s` ASC, `%s` ASC", new Object[]{"directory", "name"})));
        if (firstFromTable == null) {
            return null;
        }
        return new TransferObject(firstFromTable);
    }

    public static TransferObject fetchValidTransfer(Context context, long j, String str, TransferObject.Type type) {
        CursorItem firstFromTable = AppUtils.getDatabase(context).getFirstFromTable(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere("type=? AND groupId=? AND deviceId=? AND flag=?", type.toString(), String.valueOf(j), str, TransferObject.Flag.PENDING.toString()).setOrderBy(String.format("`%s` ASC, `%s` ASC", new Object[]{"directory", "name"})));
        if (firstFromTable == null) {
            return null;
        }
        return new TransferObject(firstFromTable);
    }

    public static List<ShowingAssignee> loadAssigneeList(SQLiteDatabase sQLiteDatabase, long j) {
        return sQLiteDatabase.castQuery(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERASSIGNEE, new String[0]).setWhere("groupId=?", String.valueOf(j)), ShowingAssignee.class, new SQLiteDatabase.CastQueryListener<ShowingAssignee>() {
            /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
            /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
                return;
             */
            /* JADX WARNING: Failed to process nested try/catch */
            /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0015 */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onObjectReconstructed(com.genonbeta.android.database.SQLiteDatabase r2, com.genonbeta.android.database.CursorItem r3, com.genonbeta.TrebleShot.object.ShowingAssignee r4) {
                /*
                    r1 = this;
                    com.genonbeta.TrebleShot.object.NetworkDevice r3 = new com.genonbeta.TrebleShot.object.NetworkDevice
                    java.lang.String r0 = r4.deviceId
                    r3.<init>((java.lang.String) r0)
                    r4.device = r3
                    com.genonbeta.TrebleShot.object.NetworkDevice$Connection r3 = new com.genonbeta.TrebleShot.object.NetworkDevice$Connection
                    r3.<init>((com.genonbeta.TrebleShot.object.TransferGroup.Assignee) r4)
                    r4.connection = r3
                    com.genonbeta.TrebleShot.object.NetworkDevice r3 = r4.device     // Catch:{ Exception -> 0x0015 }
                    r2.reconstruct(r3)     // Catch:{ Exception -> 0x0015 }
                L_0x0015:
                    com.genonbeta.TrebleShot.object.NetworkDevice$Connection r3 = r4.connection     // Catch:{ Exception -> 0x001a }
                    r2.reconstruct(r3)     // Catch:{ Exception -> 0x001a }
                L_0x001a:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.util.TransferUtils.AnonymousClass3.onObjectReconstructed(com.genonbeta.android.database.SQLiteDatabase, com.genonbeta.android.database.CursorItem, com.genonbeta.TrebleShot.object.ShowingAssignee):void");
            }
        });
    }

    public static void pauseTransfer(Context context, TransferGroup transferGroup, TransferGroup.Assignee assignee) {
        pauseTransfer(context, transferGroup.groupId, assignee == null ? null : assignee.deviceId);
    }

    public static void pauseTransfer(Context context, long j, String str) {
        AppUtils.startForegroundService(context, new Intent(context, CommunicationService.class).setAction(CommunicationService.ACTION_CANCEL_JOB).putExtra("extraGroupId", j).putExtra("extraDeviceId", str));
    }

    public static void requestStartSending(Activity activity, TransferGroup transferGroup, TransferGroup.Assignee assignee, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
        final Context applicationContext = activity.getApplicationContext();
        final Activity activity2 = activity;
        final NetworkDevice networkDevice2 = networkDevice;
        final NetworkDevice.Connection connection2 = connection;
        final TransferGroup transferGroup2 = transferGroup;
        final TransferGroup.Assignee assignee2 = assignee;
        new WorkerService.RunningTask() {
            /* access modifiers changed from: protected */
            public void onRun() {
                try {
                    final CoolSocket.ActiveConnection communicate = new CommunicationBridge.Client(AppUtils.getDatabase(activity2)).communicate(networkDevice2, connection2);
                    AnonymousClass1 r1 = new Interrupter.Closer() {
                        public void onClose(boolean z) {
                            try {
                                communicate.getSocket().close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    };
                    getInterrupter().addCloser(r1);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(Keyword.REQUEST, (Object) Keyword.REQUEST_START_TRANSFER);
                    jSONObject.put("groupId", transferGroup2.groupId);
                    communicate.reply(jSONObject.toString());
                    CoolSocket.ActiveConnection.Response receive = communicate.receive();
                    communicate.getSocket().close();
                    getInterrupter().removeCloser(r1);
                    final JSONObject jSONObject2 = new JSONObject(receive.response);
                    if (!jSONObject2.getBoolean(Keyword.RESULT) && !activity2.isFinishing()) {
                        activity2.runOnUiThread(new Runnable() {
                            public void run() {
                                String str;
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
                                try {
                                    str = jSONObject2.getString(Keyword.ERROR);
                                } catch (JSONException unused) {
                                    str = Keyword.ERROR_UNKNOWN;
                                }
                                char c = 65535;
                                int hashCode = str.hashCode();
                                if (hashCode != -2144752811) {
                                    if (hashCode != -72495001) {
                                        if (hashCode == 1553320047 && str.equals(Keyword.ERROR_NOT_FOUND)) {
                                            c = 0;
                                        }
                                    } else if (str.equals(Keyword.ERROR_REQUIRE_TRUSTZONE)) {
                                        c = 1;
                                    }
                                } else if (str.equals(Keyword.ERROR_NOT_ALLOWED)) {
                                    c = 2;
                                }
                                builder.setMessage((CharSequence) applicationContext.getString(c != 0 ? c != 1 ? c != 2 ? R.string.mesg_somethingWentWrong : R.string.mesg_notAllowed : R.string.mesg_errorNotTrustZoneDevice : R.string.mesg_notValidTransfer));
                                builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
                                builder.setPositiveButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        TransferUtils.requestStartSending(activity2, transferGroup2, assignee2, networkDevice2, connection2);
                                    }
                                });
                                builder.show();
                            }
                        });
                    }
                } catch (Exception unused) {
                    if (!activity2.isFinishing()) {
                        activity2.runOnUiThread(new Runnable() {
                            public void run() {
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
                                builder.setMessage((CharSequence) applicationContext.getString(R.string.mesg_connectionFailure));
                                builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
                                builder.setPositiveButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        TransferUtils.requestStartSending(activity2, transferGroup2, assignee2, networkDevice2, connection2);
                                    }
                                });
                                builder.show();
                            }
                        });
                    }
                }
            }
        }.setTitle(activity.getString(R.string.mesg_communicating)).run(activity);
    }

    public static void recoverIncomingInterruptions(Context context, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("flag", TransferObject.Flag.PENDING.toString());
        AppUtils.getDatabase(context).update(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere("groupId=? AND flag=? AND type=?", String.valueOf(j), TransferObject.Flag.INTERRUPTED.toString(), TransferObject.Type.INCOMING.toString()), contentValues);
    }

    public static void startTransferWithTest(Activity activity, TransferGroup transferGroup, TransferGroup.Assignee assignee, TransferObject.Type type) {
        final Context applicationContext = activity.getApplicationContext();
        final Activity activity2 = activity;
        final TransferGroup transferGroup2 = transferGroup;
        final TransferGroup.Assignee assignee2 = assignee;
        final TransferObject.Type type2 = type;
        new WorkerService.RunningTask() {
            /* access modifiers changed from: protected */
            public void onRun() {
                if (!activity2.isFinishing()) {
                    if (TransferUtils.fetchValidTransfer(activity2, transferGroup2.groupId, assignee2.deviceId, type2) == null && TransferObject.Type.INCOMING.equals(type2)) {
                        activity2.runOnUiThread(new Runnable() {
                            public void run() {
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
                                builder.setMessage((int) R.string.mesg_noPendingTransferObjectExists);
                                builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
                                builder.setPositiveButton((int) R.string.butn_retryReceiving, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        TransferUtils.recoverIncomingInterruptions(activity2, transferGroup2.groupId);
                                        TransferUtils.startTransferWithTest(activity2, transferGroup2, assignee2, type2);
                                    }
                                });
                                builder.show();
                            }
                        });
                    } else if (!TransferObject.Type.INCOMING.equals(type2) || FileUtils.getSavePath(activity2, transferGroup2).getUri().toString().equals(transferGroup2.savePath)) {
                        TransferUtils.startTransfer(activity2, transferGroup2, assignee2, type2);
                    } else {
                        activity2.runOnUiThread(new Runnable() {
                            public void run() {
                                AlertDialog.Builder builder = new AlertDialog.Builder(activity2);
                                builder.setMessage((CharSequence) applicationContext.getString(R.string.mesg_notSavingToChosenLocation, new Object[]{FileUtils.getReadableUri(transferGroup2.savePath)}));
                                builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
                                builder.setPositiveButton((int) R.string.butn_saveAnyway, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        TransferUtils.startTransfer(activity2, transferGroup2, assignee2, type2);
                                    }
                                });
                                builder.show();
                            }
                        });
                    }
                }
            }
        }.setTitle(activity.getString(R.string.mesg_completing)).run(activity);
    }

    public static void startTransfer(final Activity activity, final TransferGroup transferGroup, final TransferGroup.Assignee assignee, final TransferObject.Type type) {
        if (activity != null && !activity.isFinishing()) {
            activity.runOnUiThread(new Runnable() {
                public void run() {
                    try {
                        final NetworkDevice networkDevice = new NetworkDevice(assignee.deviceId);
                        AppUtils.getDatabase(activity).reconstruct(networkDevice);
                        new EstablishConnectionDialog(activity, networkDevice, new OnDeviceSelectedListener() {
                            public void onDeviceSelected(NetworkDevice.Connection connection, List<NetworkDevice.Connection> list) {
                                if (!assignee.connectionAdapter.equals(connection.adapterName)) {
                                    assignee.connectionAdapter = connection.adapterName;
                                    AppUtils.getDatabase(activity).publish((DatabaseObject) assignee);
                                }
                                if (TransferObject.Type.INCOMING.equals(type)) {
                                    AppUtils.startForegroundService(activity, new Intent(activity, CommunicationService.class).setAction(CommunicationService.ACTION_SEAMLESS_RECEIVE).putExtra("extraGroupId", transferGroup.groupId).putExtra("extraDeviceId", assignee.deviceId));
                                } else {
                                    TransferUtils.requestStartSending(activity, transferGroup, assignee, networkDevice, connection);
                                }
                            }
                        }).show();
                    } catch (Exception unused) {
                        new AlertDialog.Builder(activity).setMessage((int) R.string.mesg_somethingWentWrong).setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                TransferUtils.startTransfer(activity, transferGroup, assignee, type);
                            }
                        }).show();
                    }
                }
            });
        }
    }
}
