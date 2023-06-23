package com.genonbeta.android.database;

import java.util.HashMap;

public class SQLValues {
    private HashMap<String, Table> mIndex = new HashMap<>();

    public Table defineTable(String str) {
        Table table = new Table(str);
        getTables().put(str, table);
        return table;
    }

    public Table defineTable(String str, boolean z) {
        Table table = new Table(str, z);
        getTables().put(str, table);
        return table;
    }

    public HashMap<String, Table> getTables() {
        return this.mIndex;
    }

    public static class Column {
        private String mExtra;
        private String mName;
        private boolean mNullable;
        private SQLType mType;
        private String mValue;

        public Column(String str, Object obj) {
            setName(str);
            setValue(String.valueOf(obj));
        }

        public Column(String str, SQLType sQLType, boolean z) {
            setName(str);
            setType(sQLType);
            setNullable(z);
        }

        public Column(String str, SQLType sQLType, boolean z, String str2) {
            this(str, sQLType, z);
            setExtra(str2);
        }

        public String getExtra() {
            return this.mExtra;
        }

        public String getName() {
            return this.mName;
        }

        public SQLType getType() {
            return this.mType;
        }

        public String getValue() {
            return this.mValue;
        }

        public boolean isNullable() {
            return this.mNullable;
        }

        public Column setExtra(String str) {
            this.mExtra = str;
            return this;
        }

        public Column setName(String str) {
            this.mName = str;
            return this;
        }

        public Column setNullable(boolean z) {
            this.mNullable = z;
            return this;
        }

        public Column setType(SQLType sQLType) {
            this.mType = sQLType;
            return this;
        }

        public void setValue(String str) {
            this.mValue = str;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("`");
            sb.append(getName());
            sb.append("` ");
            sb.append(getType().toString());
            sb.append(" ");
            sb.append(isNullable() ? "null" : "not null");
            if (getExtra() != null) {
                str = " " + this.mExtra;
            } else {
                str = "";
            }
            sb.append(str);
            return sb.toString();
        }
    }

    public static class Table {
        private HashMap<String, Column> mColumns;
        private boolean mMayExist;
        private String mName;

        public Table(String str) {
            this.mColumns = new HashMap<>();
            setName(str);
        }

        public Table(String str, boolean z) {
            this(str);
            this.mMayExist = z;
        }

        public boolean columnExist(String str) {
            return this.mColumns.containsKey(str);
        }

        public Table define(Column column) {
            getColumns().put(column.getName(), column);
            return this;
        }

        public Column getColumn(String str) {
            return getColumns().get(str);
        }

        public HashMap<String, Column> getColumns() {
            return this.mColumns;
        }

        public String getName() {
            return this.mName;
        }

        public boolean mayExist() {
            return this.mMayExist;
        }

        public void setName(String str) {
            this.mName = str;
        }
    }
}
