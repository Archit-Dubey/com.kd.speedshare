package com.genonbeta.android.framework.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.webkit.MimeTypeMap;
import androidx.core.content.FileProvider;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.io.LocalDocumentFile;
import com.genonbeta.android.framework.io.StreamDocumentFile;
import com.genonbeta.android.framework.io.StreamInfo;
import com.genonbeta.android.framework.io.TreeDocumentFile;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URLConnection;
import java.util.Locale;

public class FileUtils {
    public static final String TAG = FileUtils.class.getSimpleName();

    /* JADX WARNING: Removed duplicated region for block: B:6:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copy(android.content.Context r8, com.genonbeta.android.framework.io.DocumentFile r9, com.genonbeta.android.framework.io.DocumentFile r10, com.genonbeta.android.framework.util.Interrupter r11, int r12, int r13) throws java.lang.Exception {
        /*
            android.content.ContentResolver r8 = r8.getContentResolver()
            android.net.Uri r9 = r9.getUri()
            java.io.InputStream r9 = r8.openInputStream(r9)
            android.net.Uri r10 = r10.getUri()
            java.io.OutputStream r8 = r8.openOutputStream(r10)
            if (r9 == 0) goto L_0x0053
            if (r8 == 0) goto L_0x0053
            byte[] r10 = new byte[r12]
            long r0 = java.lang.System.currentTimeMillis()
            r12 = 0
            r2 = 0
        L_0x0020:
            r3 = -1
            if (r2 == r3) goto L_0x004c
            int r2 = r9.read(r10)
            if (r2 <= 0) goto L_0x0033
            r8.write(r10, r12, r2)
            r8.flush()
            long r0 = java.lang.System.currentTimeMillis()
        L_0x0033:
            long r3 = java.lang.System.currentTimeMillis()
            long r3 = r3 - r0
            long r5 = (long) r13
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 > 0) goto L_0x0044
            boolean r3 = r11.interrupted()
            if (r3 != 0) goto L_0x0044
            goto L_0x0020
        L_0x0044:
            java.lang.Exception r8 = new java.lang.Exception
            java.lang.String r9 = "Timed out or interrupted. Exiting!"
            r8.<init>(r9)
            throw r8
        L_0x004c:
            r8.close()
            r9.close()
            return
        L_0x0053:
            java.io.IOException r8 = new java.io.IOException
            java.lang.String r9 = "Failed to open streams to start copying"
            r8.<init>(r9)
            goto L_0x005c
        L_0x005b:
            throw r8
        L_0x005c:
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.android.framework.util.FileUtils.copy(android.content.Context, com.genonbeta.android.framework.io.DocumentFile, com.genonbeta.android.framework.io.DocumentFile, com.genonbeta.android.framework.util.Interrupter, int, int):void");
    }

    public static DocumentFile fetchDirectories(DocumentFile documentFile, String str) throws IOException {
        return fetchDirectories(documentFile, str, true);
    }

    public static DocumentFile fetchDirectories(DocumentFile documentFile, String str, boolean z) throws IOException {
        String[] split = str.split(File.separator);
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str2 = split[i];
            if (documentFile != null) {
                DocumentFile findFile = documentFile.findFile(str2);
                if (findFile == null || findFile.isDirectory()) {
                    if (findFile != null || !z) {
                        documentFile = findFile;
                    } else {
                        documentFile = documentFile.createDirectory(str2);
                    }
                    i++;
                } else {
                    throw new IOException("A file exists for of directory name: " + str2 + " ; " + str);
                }
            } else {
                throw new IOException("Failed to create directories: " + str);
            }
        }
        return documentFile;
    }

    public static DocumentFile fetchFile(DocumentFile documentFile, String str, String str2) throws IOException {
        return fetchFile(documentFile, str, str2, true);
    }

    public static DocumentFile fetchFile(DocumentFile documentFile, String str, String str2, boolean z) throws IOException {
        DocumentFile createFile;
        if (str != null) {
            documentFile = fetchDirectories(documentFile, str, z);
        }
        if (documentFile != null) {
            DocumentFile findFile = documentFile.findFile(str2);
            if (findFile != null) {
                if (findFile.isFile()) {
                    return findFile;
                }
                throw new IOException("A directory exists for of file name");
            } else if (z && (createFile = documentFile.createFile((String) null, str2)) != null) {
                return createFile;
            }
        }
        throw new IOException("Failed to create file: " + str);
    }

    public static DocumentFile fromUri(Context context, Uri uri) throws FileNotFoundException {
        String uri2 = uri.toString();
        if (uri2.startsWith("file")) {
            return DocumentFile.fromFile(new File(URI.create(uri2)));
        }
        return DocumentFile.fromUri(context, uri, false);
    }

    public static String geActionTypeToView(String str) {
        return (!"application/vnd.android.package-archive".equals(str) || Build.VERSION.SDK_INT < 14) ? "android.intent.action.VIEW" : "android.intent.action.INSTALL_PACKAGE";
    }

    public static String getFileContentType(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        return contentTypeFor == null ? "*/*" : contentTypeFor;
    }

    public static String getFileExtension(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "";
        }
        String lowerCase = str.substring(lastIndexOf + 1).toLowerCase();
        if (MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase) == null) {
            return "";
        }
        return "." + lowerCase;
    }

    public static Intent getOpenIntent(Context context, DocumentFile documentFile) {
        if (Build.VERSION.SDK_INT >= 24 || (Build.VERSION.SDK_INT == 23 && !"android.intent.action.INSTALL_PACKAGE".equals(geActionTypeToView(documentFile.getType())))) {
            return getOpenIntent(getSecureUriSilently(context, documentFile), documentFile.getType()).addFlags(1);
        }
        return getOpenIntent(documentFile.getOriginalUri(), documentFile.getType());
    }

    public static Intent getOpenIntent(Uri uri, String str) {
        return new Intent(geActionTypeToView(str)).setDataAndType(uri, str);
    }

    public static Uri getSecureUri(Context context, DocumentFile documentFile) throws IOException {
        if (Build.VERSION.SDK_INT < 23 || (documentFile instanceof TreeDocumentFile)) {
            return documentFile.getUri();
        }
        if (documentFile instanceof StreamDocumentFile) {
            return getSecureUri(context, ((StreamDocumentFile) documentFile).getStream());
        }
        if (documentFile instanceof LocalDocumentFile) {
            return getSelfProviderFile(context, ((LocalDocumentFile) documentFile).getFile());
        }
        throw new IOException("Cannot gather right method to create uri");
    }

    public static Uri getSecureUriSilently(Context context, DocumentFile documentFile) {
        try {
            return getSecureUri(context, documentFile);
        } catch (Throwable th) {
            Log.d(TAG, String.format(Locale.US, "Cannot create secure uri for the file %s with error message '%s'", new Object[]{documentFile.getName(), th.getMessage()}));
            return documentFile.getUri();
        }
    }

    public static Uri getSecureUri(Context context, StreamInfo streamInfo) {
        return StreamInfo.Type.File.equals(streamInfo.type) ? getSelfProviderFile(context, streamInfo.file) : streamInfo.uri;
    }

    public static Uri getSelfProviderFile(Context context, File file) {
        return FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".fileprovider", file);
    }

    public static String getUniqueFileName(DocumentFile documentFile, String str, boolean z) {
        if (z && documentFile.findFile(str) == null) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(".");
        String substring = lastIndexOf != -1 ? str.substring(0, lastIndexOf) : str;
        String str2 = "";
        String substring2 = lastIndexOf != -1 ? str.substring(lastIndexOf) : str2;
        if (substring.length() != 0 || substring2.length() <= 0) {
            str2 = substring2;
        } else {
            substring = substring2;
        }
        for (int i = 1; i < 999; i++) {
            String str3 = substring + " (" + i + ")" + str2;
            if (documentFile.findFile(str3) == null) {
                return str3;
            }
        }
        return str;
    }

    public static boolean move(Context context, DocumentFile documentFile, DocumentFile documentFile2, Interrupter interrupter, int i, int i2) throws Exception {
        if (!(documentFile instanceof LocalDocumentFile) || !(documentFile2 instanceof LocalDocumentFile) || !((LocalDocumentFile) documentFile).getFile().renameTo(((LocalDocumentFile) documentFile2).getFile())) {
            copy(context, documentFile, documentFile2, interrupter, i, i2);
        }
        documentFile2.sync();
        if (documentFile.length() != documentFile2.length()) {
            return false;
        }
        documentFile.delete();
        return true;
    }

    public static boolean openUri(Context context, DocumentFile documentFile) {
        return openUri(context, getOpenIntent(context, documentFile));
    }

    public static boolean openUri(Context context, Uri uri) {
        return openUri(context, getOpenIntent(uri, context.getContentResolver().getType(uri)));
    }

    public static boolean openUri(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            Log.d(TAG, String.format(Locale.US, "Open uri request failed with error message '%s'", new Object[]{th.getMessage()}));
            return false;
        }
    }

    public static String sizeExpression(long j, boolean z) {
        int i = z ? 1000 : 1024;
        if (j < ((long) i)) {
            return j + " B";
        }
        double d = (double) j;
        double d2 = (double) i;
        int log = (int) (Math.log(d) / Math.log(d2));
        StringBuilder sb = new StringBuilder();
        sb.append((z ? "kMGTPE" : "KMGTPE").charAt(log - 1));
        sb.append(z ? "i" : "");
        String sb2 = sb.toString();
        Locale locale = Locale.getDefault();
        double pow = Math.pow(d2, (double) log);
        Double.isNaN(d);
        return String.format(locale, "%.1f %sB", new Object[]{Double.valueOf(d / pow), sb2});
    }
}
