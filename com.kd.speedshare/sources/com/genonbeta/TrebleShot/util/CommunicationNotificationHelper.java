package com.genonbeta.TrebleShot.util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.genonbeta.CoolSocket.CoolTransfer;
import com.genonbeta.TrebleShot.activity.FileExplorerActivity;
import com.genonbeta.TrebleShot.activity.TextEditorActivity;
import com.genonbeta.TrebleShot.activity.ViewTransferActivity;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TextStreamObject;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferInstance;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.receiver.DialogEventReceiver;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.android.framework.io.DocumentFile;
import com.kd.speedshare.R;

public class CommunicationNotificationHelper {
    public static final int SERVICE_COMMUNICATION_FOREGROUND_NOTIFICATION_ID = 1;
    private NotificationUtils mNotificationUtils;

    public CommunicationNotificationHelper(NotificationUtils notificationUtils) {
        this.mNotificationUtils = notificationUtils;
    }

    public DynamicNotification getCommunicationServiceNotification(boolean z, boolean z2, boolean z3) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(1, NotificationUtils.NOTIFICATION_CHANNEL_LOW);
        StringBuilder sb = new StringBuilder();
        if (z3) {
            sb.append(getContext().getString(R.string.text_webShare));
        }
        if (sb.length() > 0) {
            sb.append(" - ");
        }
        sb.append(getContext().getString(R.string.text_communicationServiceRunning));
        buildDynamicNotification.setSmallIcon(com.genonbeta.TrebleShot.R.drawable.ic_trebleshot_rounded_white_24dp_static).setContentTitle(sb.toString()).setContentText(getContext().getString(R.string.text_communicationServiceStop)).setAutoCancel(true).addAction(com.genonbeta.TrebleShot.R.drawable.ic_compare_arrows_white_24dp_static, getContext().getString(z ? R.string.butn_turnTrustZoneOff : R.string.butn_turnTrustZoneOn), PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_TOGGLE_SEAMLESS_MODE), 268435456)).setContentIntent(PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_END_SESSION), 0));
        if (z2) {
            buildDynamicNotification.addAction(com.genonbeta.TrebleShot.R.drawable.ic_autorenew_white_24dp_static, getContext().getString(R.string.butn_revokePin), PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_REVOKE_ACCESS_PIN), 268435456));
        }
        return buildDynamicNotification.show();
    }

    public Context getContext() {
        return getUtils().getContext();
    }

    public NotificationUtils getUtils() {
        return this.mNotificationUtils;
    }

    public DynamicNotification notifyConnectionRequest(NetworkDevice networkDevice) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification((long) AppUtils.getUniqueNumber(), NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        Intent intent = new Intent(getContext(), CommunicationService.class);
        Intent intent2 = new Intent(getContext(), DialogEventReceiver.class);
        intent.setAction(CommunicationService.ACTION_IP);
        intent.putExtra("extraDeviceId", networkDevice.deviceId);
        intent.putExtra(NotificationUtils.EXTRA_NOTIFICATION_ID, buildDynamicNotification.getNotificationId());
        Intent intent3 = (Intent) intent.clone();
        intent.putExtra(CommunicationService.EXTRA_IS_ACCEPTED, true);
        intent3.putExtra(CommunicationService.EXTRA_IS_ACCEPTED, false);
        PendingIntent service = PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), intent, 0);
        PendingIntent service2 = PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), intent3, 0);
        buildDynamicNotification.setSmallIcon(com.genonbeta.TrebleShot.R.drawable.ic_alert_circle_outline_white_24dp_static).setContentTitle(getContext().getString(R.string.text_connectionPermission)).setContentText(getContext().getString(R.string.ques_allowDeviceToConnect)).setContentInfo(networkDevice.nickname).setContentIntent(PendingIntent.getBroadcast(getContext(), AppUtils.getUniqueNumber(), intent2, 0)).setDefaults(getUtils().getNotificationSettings()).setDeleteIntent(service2).addAction(R.drawable.ic_check_white_24dp_static, getContext().getString(R.string.butn_accept), service).addAction(com.genonbeta.TrebleShot.R.drawable.ic_close_white_24dp_static, getContext().getString(R.string.butn_reject), service2).setTicker(getContext().getString(R.string.text_connectionPermission));
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyTransferRequest(TransferObject transferObject, NetworkDevice networkDevice, int i) {
        String str;
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(transferObject.groupId, networkDevice.deviceId, transferObject.type), NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        if (i > 1) {
            str = getContext().getResources().getQuantityString(R.plurals.ques_receiveMultipleFiles, i, new Object[]{Integer.valueOf(i)});
        } else {
            str = transferObject.friendlyName;
        }
        Intent putExtra = new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_FILE_TRANSFER).putExtra("extraDeviceId", networkDevice.deviceId).putExtra("extraGroupId", transferObject.groupId).putExtra(NotificationUtils.EXTRA_NOTIFICATION_ID, buildDynamicNotification.getNotificationId());
        Intent intent = (Intent) putExtra.clone();
        putExtra.putExtra(CommunicationService.EXTRA_IS_ACCEPTED, true);
        intent.putExtra(CommunicationService.EXTRA_IS_ACCEPTED, false);
        PendingIntent service = PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), putExtra, 0);
        PendingIntent service2 = PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), intent, 0);
        buildDynamicNotification.setSmallIcon(17301634).setContentTitle(getContext().getString(R.string.ques_receiveFile)).setContentText(str).setContentInfo(networkDevice.nickname).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), ViewTransferActivity.class).setAction(ViewTransferActivity.ACTION_LIST_TRANSFERS).putExtra("extraGroupId", transferObject.groupId), 0)).setDefaults(getUtils().getNotificationSettings()).setDeleteIntent(service2).addAction(R.drawable.ic_check_white_24dp_static, getContext().getString(R.string.butn_receive), service).addAction(com.genonbeta.TrebleShot.R.drawable.ic_close_white_24dp_static, getContext().getString(R.string.butn_reject), service2).setTicker(getContext().getString(R.string.ques_receiveFile)).setPriority(1);
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyFileTransaction(CommunicationService.ProcessHolder processHolder) throws Exception {
        if (processHolder.notification == null) {
            NetworkDevice networkDevice = new NetworkDevice(processHolder.deviceId);
            getUtils().getDatabase().reconstruct(networkDevice);
            boolean equals = TransferObject.Type.INCOMING.equals(processHolder.transferObject.type);
            processHolder.notification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(processHolder.groupId, networkDevice.deviceId, processHolder.transferObject.type), NotificationUtils.NOTIFICATION_CHANNEL_LOW);
            Intent intent = new Intent(getContext(), CommunicationService.class);
            intent.setAction(CommunicationService.ACTION_CANCEL_JOB);
            intent.putExtra("extraRequestId", processHolder.transferObject.requestId);
            intent.putExtra("extraGroupId", processHolder.groupId);
            intent.putExtra("extraDeviceId", processHolder.deviceId);
            intent.putExtra(NotificationUtils.EXTRA_NOTIFICATION_ID, processHolder.notification.getNotificationId());
            processHolder.notification.setSmallIcon(equals ? 17301633 : 17301640).setContentText(getContext().getString(equals ? R.string.text_receiving : R.string.text_sending)).setContentInfo(networkDevice.nickname).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), ViewTransferActivity.class).setAction(ViewTransferActivity.ACTION_LIST_TRANSFERS).putExtra("extraGroupId", processHolder.transferObject.groupId), 0)).setOngoing(true).addAction(com.genonbeta.TrebleShot.R.drawable.ic_close_white_24dp_static, getContext().getString(equals ? R.string.butn_cancelReceiving : R.string.butn_cancelSending), PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), intent, 0));
        }
        processHolder.notification.setContentTitle(processHolder.transferObject.friendlyName);
        return processHolder.notification;
    }

    public DynamicNotification notifyClipboardRequest(NetworkDevice networkDevice, TextStreamObject textStreamObject) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(textStreamObject.id, NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        Intent putExtra = new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_CLIPBOARD).putExtra(CommunicationService.EXTRA_CLIPBOARD_ID, textStreamObject.id).putExtra(NotificationUtils.EXTRA_NOTIFICATION_ID, buildDynamicNotification.getNotificationId());
        Intent intent = new Intent(getContext(), TextEditorActivity.class);
        Intent intent2 = (Intent) putExtra.clone();
        putExtra.putExtra(CommunicationService.EXTRA_CLIPBOARD_ACCEPTED, true);
        intent2.putExtra(CommunicationService.EXTRA_CLIPBOARD_ACCEPTED, false);
        PendingIntent service = PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), putExtra, 0);
        PendingIntent service2 = PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), intent2, 0);
        intent.setAction(TextEditorActivity.ACTION_EDIT_TEXT).putExtra(TextEditorActivity.EXTRA_CLIPBOARD_ID, textStreamObject.id).setFlags(268435456);
        buildDynamicNotification.setSmallIcon(17301634).setContentTitle(getContext().getString(R.string.ques_copyToClipboard)).setContentText(getContext().getString(R.string.text_textReceived)).setStyle(new NotificationCompat.BigTextStyle().bigText(textStreamObject.text).setBigContentTitle(getContext().getString(R.string.ques_copyToClipboard))).setContentInfo(networkDevice.nickname).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), intent, 0)).setDefaults(getUtils().getNotificationSettings()).setDeleteIntent(service2).addAction(R.drawable.ic_check_white_24dp_static, getContext().getString(17039361), service).addAction(com.genonbeta.TrebleShot.R.drawable.ic_close_white_24dp_static, getContext().getString(17039369), service2).setTicker(getContext().getString(R.string.text_receivedTextSummary)).setPriority(1);
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyFileReceived(CommunicationService.ProcessHolder processHolder, NetworkDevice networkDevice, DocumentFile documentFile) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(processHolder.groupId, networkDevice.deviceId, processHolder.transferObject.type), NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        CoolTransfer.TransferProgress<CommunicationService.ProcessHolder> transferProgress = processHolder.builder.getTransferProgress();
        buildDynamicNotification.setSmallIcon(17301634).setContentInfo(networkDevice.nickname).setAutoCancel(true).setDefaults(getUtils().getNotificationSettings()).setPriority(1).setContentText(getContext().getString(R.string.text_receivedTransfer, new Object[]{FileUtils.sizeExpression(transferProgress.getTransferredByte(), false), TimeUtils.getFriendlyElapsedTime(getContext(), transferProgress.getTimeElapsed())}));
        if (transferProgress.getTransferredFileCount() != 1) {
            buildDynamicNotification.setContentTitle(getContext().getResources().getQuantityString(R.plurals.text_fileReceiveCompletedSummary, transferProgress.getTransferredFileCount(), new Object[]{Integer.valueOf(transferProgress.getTransferredFileCount())})).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), FileExplorerActivity.class).putExtra(FileExplorerActivity.EXTRA_FILE_PATH, documentFile.getUri()), 0));
        } else {
            try {
                buildDynamicNotification.setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), FileUtils.getOpenIntent(getContext(), processHolder.currentFile), 0));
            } catch (Exception unused) {
            }
            buildDynamicNotification.setContentTitle(processHolder.transferObject.friendlyName).addAction(com.genonbeta.TrebleShot.R.drawable.ic_folder_white_24dp_static, getContext().getString(R.string.butn_showFiles), PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), FileExplorerActivity.class).putExtra(FileExplorerActivity.EXTRA_FILE_PATH, documentFile.getUri()), 0));
        }
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyReceiveError(CommunicationService.ProcessHolder processHolder) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(processHolder.groupId, processHolder.deviceId, processHolder.transferObject.type), NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        buildDynamicNotification.setSmallIcon(com.genonbeta.TrebleShot.R.drawable.ic_alert_circle_outline_white_24dp_static).setContentTitle(getContext().getString(R.string.text_error)).setContentText(getContext().getString(R.string.mesg_fileReceiveFilesLeftError)).setAutoCancel(true).setDefaults(getUtils().getNotificationSettings()).setPriority(1).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), ViewTransferActivity.class).setAction(ViewTransferActivity.ACTION_LIST_TRANSFERS).putExtra("extraGroupId", processHolder.groupId), 0));
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyReceiveError(TransferObject transferObject) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(transferObject.getId(), NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        buildDynamicNotification.setSmallIcon(com.genonbeta.TrebleShot.R.drawable.ic_alert_circle_outline_white_24dp_static).setContentTitle(getContext().getString(R.string.text_error)).setContentText(getContext().getString(R.string.mesg_fileReceiveError, new Object[]{transferObject.friendlyName})).setAutoCancel(true).setDefaults(getUtils().getNotificationSettings()).setPriority(1).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), ViewTransferActivity.class).setAction(ViewTransferActivity.ACTION_LIST_TRANSFERS).putExtra("extraGroupId", transferObject.groupId).putExtra("extraRequestId", transferObject.requestId).putExtra("extraRequestType", transferObject.type.toString()).putExtra("extraDeviceId", transferObject.deviceId), 0));
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyConnectionError(TransferInstance transferInstance, TransferObject.Type type, String str) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(transferInstance.getGroup().groupId, transferInstance.getDevice().deviceId, type), NotificationUtils.NOTIFICATION_CHANNEL_HIGH);
        String string = getContext().getString(R.string.mesg_deviceConnectionError, new Object[]{transferInstance.getDevice().nickname, TextUtils.getAdapterName(getContext(), transferInstance.getConnection())});
        if (str != null) {
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -2144752811) {
                if (hashCode == 1553320047 && str.equals(Keyword.ERROR_NOT_FOUND)) {
                    c = 1;
                }
            } else if (str.equals(Keyword.ERROR_NOT_ALLOWED)) {
                c = 0;
            }
            if (c == 0) {
                string = getContext().getString(R.string.mesg_notAllowed);
            } else if (c == 1) {
                string = getContext().getString(R.string.mesg_notValidTransfer);
            }
        }
        buildDynamicNotification.setSmallIcon(com.genonbeta.TrebleShot.R.drawable.ic_alert_circle_outline_white_24dp_static).setContentTitle(getContext().getString(R.string.text_error)).setContentText(string).setAutoCancel(true).setDefaults(getUtils().getNotificationSettings()).setPriority(1).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), ViewTransferActivity.class).setAction(ViewTransferActivity.ACTION_LIST_TRANSFERS).putExtra("extraGroupId", transferInstance.getGroup().groupId), 0));
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyPrepareFiles(TransferGroup transferGroup, NetworkDevice networkDevice) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(transferGroup.groupId, networkDevice.deviceId, TransferObject.Type.INCOMING), NotificationUtils.NOTIFICATION_CHANNEL_LOW);
        buildDynamicNotification.setSmallIcon(17301633).setContentTitle(getContext().getString(R.string.text_preparingFiles)).setContentText(getContext().getString(R.string.text_savingDetails)).setAutoCancel(false).addAction(com.genonbeta.TrebleShot.R.drawable.ic_close_white_24dp_static, getContext().getString(R.string.butn_cancel), PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_CANCEL_INDEXING).putExtra(NotificationUtils.EXTRA_NOTIFICATION_ID, buildDynamicNotification.getNotificationId()).putExtra("extraGroupId", transferGroup.groupId), 0)).setContentIntent(PendingIntent.getActivity(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), ViewTransferActivity.class).setAction(ViewTransferActivity.ACTION_LIST_TRANSFERS).putExtra("extraGroupId", transferGroup.groupId), 0));
        return buildDynamicNotification.show();
    }

    public DynamicNotification notifyStuckThread(CommunicationService.ProcessHolder processHolder) {
        return notifyStuckThread(processHolder.groupId, processHolder.deviceId, processHolder.type);
    }

    public DynamicNotification notifyStuckThread(long j, String str, TransferObject.Type type) {
        DynamicNotification buildDynamicNotification = getUtils().buildDynamicNotification(TransferUtils.createUniqueTransferId(j, str, type), NotificationUtils.NOTIFICATION_CHANNEL_LOW);
        buildDynamicNotification.setSmallIcon(com.genonbeta.TrebleShot.R.drawable.ic_alert_circle_outline_white_24dp_static).setOngoing(true).setContentTitle(getContext().getString(R.string.text_stopping)).setContentText(getContext().getString(R.string.text_cancellingTransfer)).setProgress(0, 0, true).addAction(com.genonbeta.TrebleShot.R.drawable.ic_close_white_24dp_static, getContext().getString(R.string.butn_killNow), PendingIntent.getService(getContext(), AppUtils.getUniqueNumber(), new Intent(getContext(), CommunicationService.class).setAction(CommunicationService.ACTION_CANCEL_JOB).putExtra("extraGroupId", j).putExtra("extraDeviceId", str).putExtra(NotificationUtils.EXTRA_NOTIFICATION_ID, buildDynamicNotification.getNotificationId()), 0));
        return buildDynamicNotification.show();
    }

    public void showToast(String str) {
        Toast.makeText(getContext(), str, 0).show();
    }

    public void showToast(int i) {
        Toast.makeText(getContext(), i, 0).show();
    }

    public void showToast(String str, int i) {
        Toast.makeText(getContext(), str, i).show();
    }

    public void showToast(int i, int i2) {
        Toast.makeText(getContext(), i, i2).show();
    }
}
