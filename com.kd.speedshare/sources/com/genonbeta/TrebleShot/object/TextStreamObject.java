package com.genonbeta.TrebleShot.object;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import fi.iki.elonen.NanoHTTPD;

public class TextStreamObject extends GroupEditableListAdapter.GroupShareable implements DatabaseObject<Object>, Editable {
    public String text;

    public void onCreateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public void onRemoveObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public void onUpdateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public TextStreamObject() {
    }

    public TextStreamObject(String str) {
        super(100, str);
    }

    public TextStreamObject(long j) {
        setId(j);
    }

    public TextStreamObject(long j, String str) {
        super(j, str, str, NanoHTTPD.MIME_PLAINTEXT, System.currentTimeMillis(), (long) str.length(), (Uri) null);
        this.text = str;
    }

    public boolean applyFilter(String[] strArr) {
        if (super.applyFilter(strArr)) {
            return true;
        }
        for (String lowerCase : strArr) {
            if (this.text.toLowerCase().contains(lowerCase.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        return (obj instanceof TextStreamObject) && ((TextStreamObject) obj).id == this.id;
    }

    public SQLQuery.Select getWhere() {
        return new SQLQuery.Select(AccessDatabase.TABLE_CLIPBOARD, new String[0]).setWhere("id=?", String.valueOf(getId()));
    }

    public ContentValues getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(this.id));
        contentValues.put(AccessDatabase.FIELD_CLIPBOARD_TIME, Long.valueOf(this.date));
        contentValues.put(AccessDatabase.FIELD_CLIPBOARD_TEXT, this.text);
        return contentValues;
    }

    public void reconstruct(CursorItem cursorItem) {
        this.id = cursorItem.getLong("id");
        this.text = cursorItem.getString(AccessDatabase.FIELD_CLIPBOARD_TEXT);
        this.date = cursorItem.getLong(AccessDatabase.FIELD_CLIPBOARD_TIME);
        this.mimeType = NanoHTTPD.MIME_PLAINTEXT;
        this.size = (long) this.text.length();
        this.friendlyName = this.text;
        this.fileName = this.text;
    }
}
