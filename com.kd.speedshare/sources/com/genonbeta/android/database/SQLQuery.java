package com.genonbeta.android.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.genonbeta.android.database.SQLValues;

public class SQLQuery {
    public static void createTable(SQLiteDatabase sQLiteDatabase, SQLValues.Table table) {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        if (table.mayExist()) {
            sb.append("IF NOT EXISTS ");
        }
        sb.append("`");
        sb.append(table.getName());
        sb.append("` (");
        int i = 0;
        for (SQLValues.Column next : table.getColumns().values()) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(next.toString());
            i++;
        }
        sb.append(")");
        sQLiteDatabase.execSQL(sb.toString());
    }

    public static void createTables(SQLiteDatabase sQLiteDatabase, SQLValues sQLValues) {
        for (SQLValues.Table createTable : sQLValues.getTables().values()) {
            createTable(sQLiteDatabase, createTable);
        }
    }

    public static class Select {
        public String[] columns;
        public String groupBy;
        public String having;
        public String limit;
        public LoadListener loadListener;
        private CursorItem mItems = new CursorItem();
        public String orderBy;
        public String tableName;
        public String tag;
        public String where;
        public String[] whereArgs;

        public interface LoadListener {
            void onLoad(SQLiteDatabase sQLiteDatabase, Cursor cursor, CursorItem cursorItem);

            void onOpen(SQLiteDatabase sQLiteDatabase, Cursor cursor);
        }

        public Select(String str, String... strArr) {
            this.tableName = str;
            this.columns = strArr;
        }

        public CursorItem getItems() {
            return this.mItems;
        }

        public Select setHaving(String str) {
            this.having = str;
            return this;
        }

        public Select setOrderBy(String str) {
            this.orderBy = str;
            return this;
        }

        public Select setGroupBy(String str) {
            this.groupBy = str;
            return this;
        }

        public Select setLimit(int i) {
            return setLimit(String.valueOf(i));
        }

        public Select setLimit(String str) {
            this.limit = String.valueOf(str);
            return this;
        }

        public Select setLoadListener(LoadListener loadListener2) {
            this.loadListener = loadListener2;
            return this;
        }

        public Select setTag(String str) {
            this.tag = str;
            return this;
        }

        public Select setWhere(String str, String... strArr) {
            this.where = str;
            this.whereArgs = strArr;
            return this;
        }
    }
}
