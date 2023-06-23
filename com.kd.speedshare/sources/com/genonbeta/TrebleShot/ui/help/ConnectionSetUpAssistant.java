package com.genonbeta.TrebleShot.ui.help;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.activity.ConnectionManagerActivity;
import com.kd.speedshare.R;

public class ConnectionSetUpAssistant {
    private Context mContext;

    public ConnectionSetUpAssistant(Activity activity) {
        this.mContext = activity;
    }

    public Context getContext() {
        return this.mContext;
    }

    public AlertDialog.Builder getDialogInstance() {
        return new AlertDialog.Builder(getContext()).setTitle((int) R.string.text_connectionWizard);
    }

    public void isThereQRCode() {
        getDialogInstance().setMessage((int) R.string.ques_connectionWizardIsThereQRCode).setNeutralButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_yes, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.updateFragment(ConnectionManagerActivity.AvailableFragment.ScanQrCode);
            }
        }).setNegativeButton((int) R.string.butn_no, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.useHotspot();
            }
        }).show();
    }

    public void useNetwork() {
        getDialogInstance().setMessage((int) R.string.ques_connectionWizardUseNetwork).setNeutralButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_yes, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.updateFragment(ConnectionManagerActivity.AvailableFragment.UseExistingNetwork);
            }
        }).setNegativeButton((int) R.string.butn_no, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.useKnownDevices();
            }
        }).show();
    }

    public void useKnownDevices() {
        getDialogInstance().setMessage((int) R.string.ques_connectionWizardUseKnownDevices).setNeutralButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_yes, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.updateFragment(ConnectionManagerActivity.AvailableFragment.UseKnownDevice);
            }
        }).setNegativeButton((int) R.string.butn_retry, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.isOtherDeviceReady();
            }
        }).show();
    }

    public void useHotspot() {
        getDialogInstance().setMessage((int) R.string.ques_connectionWizardUseHotspot).setNeutralButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_yes, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.updateFragment(ConnectionManagerActivity.AvailableFragment.CreateHotspot);
            }
        }).setNegativeButton((int) R.string.butn_no, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.useNetwork();
            }
        }).show();
    }

    public void isOtherDeviceReady() {
        getDialogInstance().setMessage((int) R.string.ques_connectionWizardIsOtherDeviceReady).setNeutralButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_yes, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.isThereQRCode();
            }
        }).setNegativeButton((int) R.string.butn_no, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ConnectionSetUpAssistant.this.useHotspot();
            }
        }).show();
    }

    public void startShowing() {
        isOtherDeviceReady();
    }

    public void updateFragment(ConnectionManagerActivity.AvailableFragment availableFragment) {
        getContext().sendBroadcast(new Intent(ConnectionManagerActivity.ACTION_CHANGE_FRAGMENT).putExtra(ConnectionManagerActivity.EXTRA_FRAGMENT_ENUM, availableFragment.toString()));
    }
}
