package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.activity.ShareActivity;
import com.genonbeta.TrebleShot.adapter.ApplicationListAdapter;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.util.Interrupter;
import com.kd.speedshare.R;
import fi.iki.elonen.NanoHTTPD;
import java.io.File;

public class ShareAppDialog extends AlertDialog.Builder {
    public ShareAppDialog(final Context context) {
        super(context);
        setMessage((int) R.string.ques_shareAsApkOrLink);
        setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
        setNeutralButton((int) R.string.butn_asApk, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ShareAppDialog.this.shareAsApk(context);
            }
        });
        setPositiveButton((int) R.string.butn_asLink, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ShareAppDialog.this.shareAsLink(context);
            }
        });
    }

    /* access modifiers changed from: private */
    public void shareAsApk(final Context context) {
        new Handler(Looper.myLooper()).post(new Runnable() {
            public void run() {
                try {
                    Interrupter interrupter = new Interrupter();
                    PackageManager packageManager = context.getPackageManager();
                    PackageInfo packageInfo = packageManager.getPackageInfo(context.getApplicationInfo().packageName, 0);
                    String str = packageInfo.applicationInfo.loadLabel(packageManager) + "_" + packageInfo.versionName + ApplicationListAdapter.PackageHolder.FORMAT;
                    DocumentFile applicationDirectory = FileUtils.getApplicationDirectory(context.getApplicationContext());
                    DocumentFile fromFile = DocumentFile.fromFile(new File(context.getApplicationInfo().sourceDir));
                    DocumentFile createFile = applicationDirectory.createFile((String) null, FileUtils.getUniqueFileName(applicationDirectory, str, true));
                    FileUtils.copy(context, fromFile, createFile, interrupter);
                    try {
                        context.startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").putExtra(ShareActivity.EXTRA_FILENAME_LIST, str).putExtra("android.intent.extra.STREAM", FileUtils.getSecureUri(context, createFile)).addFlags(1).setType(createFile.getType()), context.getString(R.string.text_fileShareAppChoose)));
                    } catch (IllegalArgumentException e) {
                        Toast.makeText(context, R.string.mesg_providerNotAllowedError, 1).show();
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void shareAsLink(final Context context) {
        new Handler(Looper.myLooper()).post(new Runnable() {
            public void run() {
                try {
                    context.startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").putExtra("android.intent.extra.TEXT", context.getString(R.string.text_linkTrebleshot, new Object[]{AppConfig.URI_GOOGLE_PLAY})).addFlags(1).setType(NanoHTTPD.MIME_PLAINTEXT), context.getString(R.string.text_fileShareAppChoose)));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
