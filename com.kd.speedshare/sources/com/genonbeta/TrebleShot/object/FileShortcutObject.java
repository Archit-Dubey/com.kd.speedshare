package com.genonbeta.TrebleShot.object;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;

public class FileShortcutObject implements DatabaseObject<Object> {
    public Uri path;
    public String title;

    public void onCreateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public void onRemoveObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public void onUpdateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public FileShortcutObject() {
    }

    public FileShortcutObject(Uri uri) {
        this.path = uri;
    }

    public FileShortcutObject(String str, Uri uri) {
        this(uri);
        this.title = str;
    }

    public SQLQuery.Select getWhere() {
        return new SQLQuery.Select(AccessDatabase.TABLE_FILEBOOKMARK, new String[0]).setWhere(String.format("%s = ?", new Object[]{"path"}), this.path.toString());
    }

    public ContentValues getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", this.title);
        contentValues.put("path", this.path.toString());
        return contentValues;
    }

    public void reconstruct(CursorItem cursorItem) {
        this.title = cursorItem.getString("title");
        this.path = Uri.parse(cursorItem.getString("path"));
    }
}
