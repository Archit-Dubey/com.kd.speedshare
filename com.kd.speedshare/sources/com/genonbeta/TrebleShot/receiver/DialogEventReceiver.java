package com.genonbeta.TrebleShot.receiver;

import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import com.kd.speedshare.R;

public class DialogEventReceiver extends BroadcastReceiver {
    public static final String ACTION_DIALOG = "com.genonbeta.TrebleShot.action.makeDialog";
    public static final String EXTRA_MESSAGE = "message";
    public static final String EXTRA_NEGATIVE_INTENT = "negative";
    public static final String EXTRA_POSITIVE_INTENT = "positive";
    public static final String EXTRA_TITLE = "title";

    public void onReceive(Context context, Intent intent) {
        if (ACTION_DIALOG.equals(intent.getAction()) && Build.VERSION.SDK_INT <= 21) {
            showDialog(context, intent.getStringExtra("title"), intent.getStringExtra(EXTRA_MESSAGE), (PendingIntent) intent.getParcelableExtra(EXTRA_POSITIVE_INTENT), (PendingIntent) intent.getParcelableExtra(EXTRA_NEGATIVE_INTENT));
        }
    }

    public void showDialog(Context context, String str, String str2, final PendingIntent pendingIntent, final PendingIntent pendingIntent2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        if (str != null) {
            builder.setTitle(str);
        }
        if (str2 != null) {
            builder.setMessage(str2);
        }
        if (pendingIntent != null) {
            builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    try {
                        pendingIntent.send();
                    } catch (PendingIntent.CanceledException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        if (pendingIntent2 != null) {
            builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    try {
                        pendingIntent2.send();
                    } catch (PendingIntent.CanceledException e) {
                        e.printStackTrace();
                    }
                }
            });
        } else {
            builder.setNegativeButton(R.string.butn_close, (DialogInterface.OnClickListener) null);
        }
        AlertDialog create = builder.create();
        create.getWindow().setType(2003);
        create.show();
    }
}
