package com.genonbeta.android.framework.io;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.FileNotFoundException;

public class TreeDocumentFile extends DocumentFile {
    private Context mContext;
    private boolean mExists;
    private long mFlags;
    private String mId;
    private long mLastModified;
    private long mLength;
    private String mName;
    private String mType;
    private Uri mUri;

    public TreeDocumentFile(DocumentFile documentFile, Context context, Uri uri, Uri uri2) throws Exception {
        super(documentFile, uri2);
        this.mContext = context;
        this.mUri = uri;
        sync();
    }

    public TreeDocumentFile(DocumentFile documentFile, Context context, Cursor cursor) {
        super(documentFile, (Uri) null);
        this.mContext = context;
        if (loadFrom(cursor)) {
            this.mUri = DocumentsContract.buildDocumentUriUsingTree(documentFile.getUri(), this.mId);
        }
        setOriginalUri(this.mUri);
    }

    public DocumentFile createFile(String str, String str2) {
        try {
            Uri createDocument = DocumentsContract.createDocument(this.mContext.getContentResolver(), this.mUri, str, str2);
            if (createDocument != null) {
                return new TreeDocumentFile(this, this.mContext, createDocument, createDocument);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public DocumentFile createDirectory(String str) {
        return createFile("vnd.android.document/directory", str);
    }

    public long getFlags() {
        return this.mFlags;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getName() {
        return this.mName;
    }

    public String getType() {
        return this.mType;
    }

    public boolean isDirectory() {
        return "vnd.android.document/directory".equals(this.mType);
    }

    public boolean isFile() {
        return !"vnd.android.document/directory".equals(this.mType) || TextUtils.isEmpty(this.mType);
    }

    public boolean isVirtual() {
        return (getFlags() & 512) != 0;
    }

    public long lastModified() {
        return this.mLastModified;
    }

    public long length() {
        return this.mLength;
    }

    /* access modifiers changed from: protected */
    public boolean loadFrom(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        int columnIndex = cursor.getColumnIndex("document_id");
        int columnIndex2 = cursor.getColumnIndex("_display_name");
        int columnIndex3 = cursor.getColumnIndex("_size");
        int columnIndex4 = cursor.getColumnIndex("mime_type");
        int columnIndex5 = cursor.getColumnIndex("flags");
        int columnIndex6 = cursor.getColumnIndex("last_modified");
        if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1 || columnIndex4 == -1 || columnIndex5 == -1 || columnIndex6 == -1) {
            return false;
        }
        this.mId = cursor.getString(columnIndex);
        this.mName = cursor.getString(columnIndex2);
        this.mLastModified = cursor.getLong(columnIndex6);
        this.mLength = cursor.getLong(columnIndex3);
        this.mType = cursor.getString(columnIndex4);
        this.mFlags = cursor.getLong(columnIndex5);
        this.mExists = true;
        return true;
    }

    public boolean canRead() {
        return this.mContext.checkCallingOrSelfUriPermission(this.mUri, 1) == 0;
    }

    public boolean canWrite() {
        return this.mContext.checkCallingOrSelfUriPermission(this.mUri, 2) == 0;
    }

    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.mContext.getContentResolver(), this.mUri);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean exists() {
        return this.mExists;
    }

    public DocumentFile[] listFiles() {
        try {
            Cursor query = this.mContext.getContentResolver().query(DocumentsContract.buildChildDocumentsUriUsingTree(this.mUri, DocumentsContract.getDocumentId(this.mUri)), (String[]) null, (String) null, (String[]) null, (String) null, (CancellationSignal) null);
            if (query != null) {
                if (query.moveToFirst()) {
                    DocumentFile[] documentFileArr = new DocumentFile[query.getCount()];
                    do {
                        documentFileArr[query.getPosition()] = new TreeDocumentFile(this, this.mContext, query);
                    } while (query.moveToNext());
                    closeQuietly(query);
                    return documentFileArr;
                }
            }
            return new DocumentFile[0];
        } catch (Exception unused) {
            return new DocumentFile[0];
        }
    }

    public boolean renameTo(String str) {
        try {
            return DocumentsContract.renameDocument(this.mContext.getContentResolver(), this.mUri, str) != null;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void sync() throws Exception {
        this.mExists = false;
        try {
            Cursor query = this.mContext.getContentResolver().query(this.mUri, (String[]) null, (String) null, (String[]) null, (String) null);
            if (query == null || !query.moveToFirst() || !loadFrom(query)) {
                closeQuietly(query);
                throw new Exception("Failed to sync()");
            } else {
                closeQuietly(query);
            }
        } catch (Exception e) {
            String str = TAG;
            Log.w(str, "Failed query: " + e);
            throw e;
        } catch (Throwable th) {
            closeQuietly((Closeable) null);
            throw th;
        }
    }
}
