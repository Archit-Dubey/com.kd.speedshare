package com.genonbeta.android.framework.io;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.genonbeta.android.framework.util.FileUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StreamCorruptedException;
import java.net.URI;

public class StreamInfo {
    public File file;
    public String friendlyName;
    private ContentResolver mResolver;
    public String mimeType;
    public long size;
    public Type type;
    public Uri uri;

    public static class FolderStateException extends Exception {
    }

    public enum Type {
        Stream,
        File
    }

    public StreamInfo() {
    }

    public StreamInfo(Context context, Uri uri2) throws FileNotFoundException, StreamCorruptedException, FolderStateException {
        if (!loadStream(context, uri2)) {
            throw new StreamCorruptedException("Content was not able to route a stream. Empty result is returned");
        }
    }

    public static StreamInfo getStreamInfo(Context context, Uri uri2) throws FileNotFoundException, StreamCorruptedException, FolderStateException {
        return new StreamInfo(context, uri2);
    }

    private boolean loadStream(Context context, Uri uri2) throws FolderStateException, FileNotFoundException {
        String uri3 = uri2.toString();
        this.uri = uri2;
        if (uri3.startsWith(FirebaseAnalytics.Param.CONTENT)) {
            ContentResolver contentResolver = context.getContentResolver();
            this.mResolver = contentResolver;
            Cursor query = contentResolver.query(uri2, (String[]) null, (String) null, (String[]) null, (String) null);
            if (query == null) {
                return false;
            }
            if (query.moveToFirst()) {
                int columnIndex = query.getColumnIndex("_display_name");
                int columnIndex2 = query.getColumnIndex("_size");
                if (!(columnIndex == -1 || columnIndex2 == -1)) {
                    this.friendlyName = query.getString(columnIndex);
                    this.size = query.getLong(columnIndex2);
                    this.mimeType = this.mResolver.getType(uri2);
                    this.type = Type.Stream;
                    return true;
                }
            }
            query.close();
            return false;
        } else if (!uri3.startsWith("file")) {
            return false;
        } else {
            File file2 = new File(URI.create(uri3));
            if (!file2.canRead()) {
                return false;
            }
            if (!file2.isDirectory()) {
                this.friendlyName = file2.getName();
                this.size = file2.length();
                this.mimeType = FileUtils.getFileContentType(file2.getName());
                this.type = Type.File;
                this.file = file2;
                return true;
            }
            throw new FolderStateException();
        }
    }

    public ContentResolver getContentResolver() {
        return this.mResolver;
    }

    public OutputStream openOutputStream() throws FileNotFoundException {
        return this.file == null ? getContentResolver().openOutputStream(this.uri, "wa") : new FileOutputStream(this.file, true);
    }

    public InputStream openInputStream() throws FileNotFoundException {
        return this.file == null ? getContentResolver().openInputStream(this.uri) : new FileInputStream(this.file);
    }
}
