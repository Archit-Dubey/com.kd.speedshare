package com.genonbeta.android.database;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.genonbeta.android.database.SQLQuery;

public interface DatabaseObject<T> {
    ContentValues getValues();

    SQLQuery.Select getWhere();

    void onCreateObject(SQLiteDatabase sQLiteDatabase, SQLiteDatabase sQLiteDatabase2, T t);

    void onRemoveObject(SQLiteDatabase sQLiteDatabase, SQLiteDatabase sQLiteDatabase2, T t);

    void onUpdateObject(SQLiteDatabase sQLiteDatabase, SQLiteDatabase sQLiteDatabase2, T t);

    void reconstruct(CursorItem cursorItem);
}
