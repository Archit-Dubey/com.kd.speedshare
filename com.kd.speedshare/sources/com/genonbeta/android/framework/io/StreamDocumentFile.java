package com.genonbeta.android.framework.io;

import android.net.Uri;
import java.io.File;

public class StreamDocumentFile extends DocumentFile {
    private StreamInfo mStream;

    public boolean canRead() {
        return true;
    }

    public boolean canWrite() {
        return true;
    }

    public DocumentFile createDirectory(String str) {
        return null;
    }

    public DocumentFile createFile(String str, String str2) {
        return null;
    }

    public boolean delete() {
        return false;
    }

    public boolean exists() {
        return true;
    }

    public boolean isDirectory() {
        return false;
    }

    public boolean isFile() {
        return true;
    }

    public boolean isVirtual() {
        return false;
    }

    public long lastModified() {
        return 0;
    }

    public DocumentFile[] listFiles() {
        return new DocumentFile[0];
    }

    public boolean renameTo(String str) {
        return false;
    }

    public void sync() {
    }

    public StreamDocumentFile(StreamInfo streamInfo, Uri uri) {
        super((DocumentFile) null, uri);
        this.mStream = streamInfo;
    }

    public Uri getUri() {
        return this.mStream.uri;
    }

    public File getFile() {
        return this.mStream.file;
    }

    public String getName() {
        return this.mStream.friendlyName;
    }

    public StreamInfo getStream() {
        return this.mStream;
    }

    public String getType() {
        return this.mStream.mimeType;
    }

    public long length() {
        return this.mStream.size;
    }
}
