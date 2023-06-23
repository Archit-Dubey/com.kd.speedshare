package com.genonbeta.TrebleShot.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.widget.Toast;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.preference.SuperPreferences;
import com.genonbeta.android.framework.util.Interrupter;
import com.kd.speedshare.R;
import java.io.File;
import java.io.IOException;

public class FileUtils extends com.genonbeta.android.framework.util.FileUtils {
    public static void copy(Context context, DocumentFile documentFile, DocumentFile documentFile2, Interrupter interrupter) throws Exception {
        copy(context, documentFile, documentFile2, interrupter, AppConfig.BUFFER_LENGTH_DEFAULT, 5000);
    }

    public static DocumentFile getApplicationDirectory(Context context) {
        String defaultApplicationDirectoryPath = getDefaultApplicationDirectoryPath(context);
        SuperPreferences defaultPreferences = AppUtils.getDefaultPreferences(context);
        if (defaultPreferences.contains("storage_path")) {
            try {
                DocumentFile fromUri = fromUri(context, Uri.parse(defaultPreferences.getString("storage_path", (String) null)));
                if (fromUri.isDirectory() && fromUri.canWrite()) {
                    return fromUri;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        File file = new File(defaultApplicationDirectoryPath);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.isDirectory()) {
            file.mkdirs();
        }
        return DocumentFile.fromFile(file);
    }

    public static String getDefaultApplicationDirectoryPath(Context context) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getString(R.string.text_appName);
    }

    public static String getFileFormat(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            return str.substring(lastIndexOf + 1).toLowerCase();
        }
        return null;
    }

    public static DocumentFile getIncomingPseudoFile(Context context, TransferObject transferObject, TransferGroup transferGroup, boolean z) throws IOException {
        return fetchFile(getSavePath(context, transferGroup), transferObject.directory, transferObject.file, z);
    }

    public static DocumentFile getIncomingTransactionFile(Context context, TransferObject transferObject, TransferGroup transferGroup) throws IOException {
        DocumentFile incomingPseudoFile = getIncomingPseudoFile(context, transferObject, transferGroup, true);
        if (incomingPseudoFile.canWrite()) {
            return incomingPseudoFile;
        }
        throw new IOException("File cannot be created or you don't have permission write on it");
    }

    public static String getReadableUri(String str) {
        return getReadableUri(Uri.parse(str), str);
    }

    public static String getReadableUri(Uri uri) {
        return getReadableUri(uri, uri.toString());
    }

    public static String getReadableUri(Uri uri, String str) {
        return uri.getPath() == null ? str : uri.getPath();
    }

    public static boolean move(Context context, DocumentFile documentFile, DocumentFile documentFile2, Interrupter interrupter) throws Exception {
        return move(context, documentFile, documentFile2, interrupter, AppConfig.BUFFER_LENGTH_DEFAULT, 5000);
    }

    public static DocumentFile getSavePath(Context context, TransferGroup transferGroup) {
        DocumentFile applicationDirectory = getApplicationDirectory(context);
        if (transferGroup.savePath != null) {
            try {
                DocumentFile fromUri = fromUri(context, Uri.parse(transferGroup.savePath));
                if (!fromUri.isDirectory() || !fromUri.canWrite()) {
                    return applicationDirectory;
                }
                return fromUri;
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            transferGroup.savePath = applicationDirectory.getUri().toString();
            AppUtils.getDatabase(context).publish((DatabaseObject) transferGroup);
        }
        return applicationDirectory;
    }

    public static boolean openUriForeground(Activity activity, DocumentFile documentFile) {
        if (openUri((Context) activity, documentFile)) {
            return true;
        }
        Toast.makeText(activity, activity.getString(R.string.mesg_openFailure, new Object[]{documentFile.getName()}), 0).show();
        return false;
    }

    public static DocumentFile saveReceivedFile(DocumentFile documentFile, DocumentFile documentFile2, TransferObject transferObject) throws IOException {
        String uniqueFileName = getUniqueFileName(documentFile, transferObject.friendlyName, true);
        if (documentFile2.renameTo(uniqueFileName)) {
            return documentFile.findFile(uniqueFileName);
        }
        throw new IOException("Failed to rename object: " + documentFile2);
    }
}
