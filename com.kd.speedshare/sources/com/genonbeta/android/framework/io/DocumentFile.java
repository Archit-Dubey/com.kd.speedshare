package com.genonbeta.android.framework.io;

import android.net.Uri;
import android.provider.DocumentsContract;
import java.io.Closeable;
import java.io.File;

public abstract class DocumentFile {
    public static final String TAG = DocumentFile.class.getSimpleName();
    private Uri mOriginalUri;
    private final DocumentFile mParent;

    public abstract boolean canRead();

    public abstract boolean canWrite();

    public abstract DocumentFile createDirectory(String str);

    public abstract DocumentFile createFile(String str, String str2);

    public abstract boolean delete();

    public abstract boolean exists();

    public abstract String getName();

    public abstract String getType();

    public abstract Uri getUri();

    public abstract boolean isDirectory();

    public abstract boolean isFile();

    public abstract boolean isVirtual();

    public abstract long lastModified();

    public abstract long length();

    public abstract DocumentFile[] listFiles();

    public abstract boolean renameTo(String str);

    public abstract void sync() throws Exception;

    public DocumentFile(DocumentFile documentFile, Uri uri) {
        this.mParent = documentFile;
        setOriginalUri(uri);
    }

    public static DocumentFile fromFile(File file) {
        return new LocalDocumentFile((DocumentFile) null, file);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:0|(5:2|3|(1:5)(1:6)|7|8)|9|10|11) */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003a, code lost:
        throw new java.io.FileNotFoundException("Failed to create right connection for " + r3.toString());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0015 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.genonbeta.android.framework.io.DocumentFile fromUri(android.content.Context r2, android.net.Uri r3, boolean r4) throws java.io.FileNotFoundException {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x0015
            com.genonbeta.android.framework.io.TreeDocumentFile r0 = new com.genonbeta.android.framework.io.TreeDocumentFile     // Catch:{ Exception -> 0x0015 }
            r1 = 0
            if (r4 == 0) goto L_0x0010
            android.net.Uri r4 = prepareUri(r3)     // Catch:{ Exception -> 0x0015 }
            goto L_0x0011
        L_0x0010:
            r4 = r3
        L_0x0011:
            r0.<init>(r1, r2, r4, r3)     // Catch:{ Exception -> 0x0015 }
            return r0
        L_0x0015:
            com.genonbeta.android.framework.io.StreamDocumentFile r4 = new com.genonbeta.android.framework.io.StreamDocumentFile     // Catch:{ Exception -> 0x0020 }
            com.genonbeta.android.framework.io.StreamInfo r0 = new com.genonbeta.android.framework.io.StreamInfo     // Catch:{ Exception -> 0x0020 }
            r0.<init>(r2, r3)     // Catch:{ Exception -> 0x0020 }
            r4.<init>(r0, r3)     // Catch:{ Exception -> 0x0020 }
            return r4
        L_0x0020:
            java.io.FileNotFoundException r2 = new java.io.FileNotFoundException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Failed to create right connection for "
            r4.append(r0)
            java.lang.String r3 = r3.toString()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.android.framework.io.DocumentFile.fromUri(android.content.Context, android.net.Uri, boolean):com.genonbeta.android.framework.io.DocumentFile");
    }

    public boolean equals(Object obj) {
        return (obj instanceof DocumentFile) && getUri() != null && getUri().equals(((DocumentFile) obj).getUri());
    }

    public Uri getOriginalUri() {
        return this.mOriginalUri;
    }

    /* access modifiers changed from: protected */
    public void setOriginalUri(Uri uri) {
        this.mOriginalUri = uri;
    }

    public DocumentFile getParentFile() {
        return this.mParent;
    }

    public DocumentFile findFile(String str) {
        for (DocumentFile documentFile : listFiles()) {
            if (str.equals(documentFile.getName())) {
                return documentFile;
            }
        }
        return null;
    }

    protected static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    protected static Uri prepareUri(Uri uri) {
        return DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
    }
}
