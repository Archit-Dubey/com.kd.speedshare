package com.genonbeta.TrebleShot.database;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import androidx.collection.ArrayMap;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLType;
import com.genonbeta.android.database.SQLValues;
import com.genonbeta.android.database.SQLiteDatabase;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class AccessDatabase extends SQLiteDatabase {
    public static final String ACTION_DATABASE_CHANGE = "com.genonbeta.intent.action.DATABASE_CHANGE";
    public static final String DATABASE_NAME;
    public static final int DATABASE_VERSION = 12;
    public static final String DIVIS_TRANSFER = "divisionTransfer";
    public static final String EXTRA_AFFECTED_ITEM_COUNT = "affectedItemCount";
    public static final String EXTRA_CHANGE_TYPE = "changeType";
    public static final String EXTRA_TABLE_NAME = "tableName";
    public static final String FIELD_CLIPBOARD_ID = "id";
    public static final String FIELD_CLIPBOARD_TEXT = "text";
    public static final String FIELD_CLIPBOARD_TIME = "time";
    public static final String FIELD_DEVICECONNECTION_ADAPTERNAME = "adapterName";
    public static final String FIELD_DEVICECONNECTION_DEVICEID = "deviceId";
    public static final String FIELD_DEVICECONNECTION_IPADDRESS = "ipAddress";
    public static final String FIELD_DEVICECONNECTION_LASTCHECKEDDATE = "lastCheckedDate";
    public static final String FIELD_DEVICES_BRAND = "brand";
    public static final String FIELD_DEVICES_BUILDNAME = "buildName";
    public static final String FIELD_DEVICES_BUILDNUMBER = "buildNumber";
    public static final String FIELD_DEVICES_ID = "deviceId";
    public static final String FIELD_DEVICES_ISLOCALADDRESS = "isLocalAddress";
    public static final String FIELD_DEVICES_ISRESTRICTED = "isRestricted";
    public static final String FIELD_DEVICES_ISTRUSTED = "isTrusted";
    public static final String FIELD_DEVICES_LASTUSAGETIME = "lastUsedTime";
    public static final String FIELD_DEVICES_MODEL = "model";
    public static final String FIELD_DEVICES_TMPSECUREKEY = "tmpSecureKey";
    public static final String FIELD_DEVICES_USER = "user";
    public static final String FIELD_FILEBOOKMARK_PATH = "path";
    public static final String FIELD_FILEBOOKMARK_TITLE = "title";
    public static final String FIELD_TRANSFERASSIGNEE_CONNECTIONADAPTER = "connectionAdapter";
    public static final String FIELD_TRANSFERASSIGNEE_DEVICEID = "deviceId";
    public static final String FIELD_TRANSFERASSIGNEE_GROUPID = "groupId";
    public static final String FIELD_TRANSFERASSIGNEE_ISCLONE = "isClone";
    public static final String FIELD_TRANSFERGROUP_DATECREATED = "dateCreated";
    public static final String FIELD_TRANSFERGROUP_ID = "id";
    public static final String FIELD_TRANSFERGROUP_ISSHAREDONWEB = "isSharedOnWeb";
    public static final String FIELD_TRANSFERGROUP_SAVEPATH = "savePath";
    public static final String FIELD_TRANSFER_ACCESSPORT = "accessPort";
    public static final String FIELD_TRANSFER_DEVICEID = "deviceId";
    public static final String FIELD_TRANSFER_DIRECTORY = "directory";
    public static final String FIELD_TRANSFER_FILE = "file";
    public static final String FIELD_TRANSFER_FLAG = "flag";
    public static final String FIELD_TRANSFER_GROUPID = "groupId";
    public static final String FIELD_TRANSFER_ID = "id";
    public static final String FIELD_TRANSFER_MIME = "mime";
    public static final String FIELD_TRANSFER_NAME = "name";
    public static final String FIELD_TRANSFER_SIZE = "size";
    public static final String FIELD_TRANSFER_SKIPPEDBYTES = "skippedBytes";
    public static final String FIELD_TRANSFER_TYPE = "type";
    public static final String FIELD_WRITABLEPATH_PATH = "path";
    public static final String FIELD_WRITABLEPATH_TITLE = "title";
    public static final String TABLE_CLIPBOARD = "clipboard";
    public static final String TABLE_DEVICECONNECTION = "deviceConnection";
    public static final String TABLE_DEVICES = "devices";
    public static final String TABLE_FILEBOOKMARK = "fileBookmark";
    public static final String TABLE_TRANSFER = "transfer";
    public static final String TABLE_TRANSFERASSIGNEE = "transferAssignee";
    public static final String TABLE_TRANSFERGROUP = "transferGroup";
    public static final String TABLE_WRITABLEPATH = "writablePath";
    public static final String TAG;
    public static final String TYPE_INSERT = "typeInsert";
    public static final String TYPE_REMOVE = "typeRemove";
    public static final String TYPE_UPDATE = "typeUpdate";

    static {
        Class<AccessDatabase> cls = AccessDatabase.class;
        TAG = cls.getSimpleName();
        DATABASE_NAME = cls.getSimpleName() + ".db";
    }

    public AccessDatabase(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 12);
    }

    public static CursorItem convertValues(ContentValues contentValues) {
        CursorItem cursorItem = new CursorItem();
        for (String next : contentValues.keySet()) {
            cursorItem.put(next, contentValues.get(next));
        }
        return cursorItem;
    }

    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        SQLQuery.createTables(sQLiteDatabase, getDatabaseTables());
    }

    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
        android.database.sqlite.SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        int i3 = i;
        SQLValues databaseTables = getDatabaseTables();
        if (i3 <= 5) {
            for (String str : getDatabaseTables().getTables().keySet()) {
                sQLiteDatabase2.execSQL("DROP TABLE IF EXISTS `" + str + "`");
            }
            SQLQuery.createTables(sQLiteDatabase2, databaseTables);
            return;
        }
        if (i3 <= 6) {
            SQLValues.Table table = databaseTables.getTables().get(TABLE_TRANSFERGROUP);
            SQLValues.Table table2 = databaseTables.getTables().get(TABLE_DEVICES);
            sQLiteDatabase2.execSQL(String.format("DROP TABLE IF EXISTS `%s`", new Object[]{table.getName()}));
            sQLiteDatabase2.execSQL(String.format("DROP TABLE IF EXISTS `%s`", new Object[]{table2.getName()}));
            SQLQuery.createTable(sQLiteDatabase2, table);
            SQLQuery.createTable(sQLiteDatabase2, table2);
            SQLQuery.createTable(sQLiteDatabase2, databaseTables.getTables().get(TABLE_TRANSFERASSIGNEE));
        }
        if (i3 < 10) {
            try {
                SQLValues.Table table3 = databaseTables.getTables().get(TABLE_TRANSFER);
                SQLValues.Table table4 = databaseTables.getTables().get(DIVIS_TRANSFER);
                ArrayMap arrayMap = new ArrayMap();
                ArrayList arrayList = new ArrayList();
                List<TransferGroup.Assignee> castQuery = castQuery(sQLiteDatabase2, new SQLQuery.Select(TABLE_TRANSFERASSIGNEE, new String[0]), TransferGroup.Assignee.class, (SQLiteDatabase.CastQueryListener) null);
                List<TransferObject> castQuery2 = castQuery(sQLiteDatabase2, new SQLQuery.Select(TABLE_TRANSFER, new String[0]), TransferObject.class, (SQLiteDatabase.CastQueryListener) null);
                for (TransferGroup.Assignee next : castQuery) {
                    SQLValues.Table table5 = table4;
                    if (!arrayMap.containsKey(Long.valueOf(next.groupId))) {
                        arrayMap.put(Long.valueOf(next.groupId), next.deviceId);
                    }
                    table4 = table5;
                }
                SQLValues.Table table6 = table4;
                for (TransferObject next2 : castQuery2) {
                    next2.deviceId = (String) arrayMap.get(Long.valueOf(next2.groupId));
                    if (next2.deviceId != null) {
                        arrayList.add(next2);
                    }
                }
                sQLiteDatabase2.execSQL(String.format("DROP TABLE IF EXISTS `%s`", new Object[]{table3.getName()}));
                SQLQuery.createTable(sQLiteDatabase2, table3);
                SQLQuery.createTable(sQLiteDatabase2, table6);
                insert(sQLiteDatabase2, arrayList, (SQLiteDatabase.ProgressUpdater) null, (Object) null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (i3 < 11) {
            SQLQuery.createTable(sQLiteDatabase2, databaseTables.getTables().get(TABLE_FILEBOOKMARK));
        }
        if (i3 < 12) {
            List<TransferGroup> castQuery3 = castQuery(sQLiteDatabase2, new SQLQuery.Select(TABLE_TRANSFERGROUP, new String[0]), TransferGroup.class, (SQLiteDatabase.CastQueryListener) null);
            SQLValues.Table table7 = databaseTables.getTables().get(TABLE_TRANSFERGROUP);
            sQLiteDatabase2.execSQL(String.format("DROP TABLE IF EXISTS `%s`", new Object[]{table7.getName()}));
            SQLQuery.createTable(sQLiteDatabase2, table7);
            insert(sQLiteDatabase2, castQuery3, (SQLiteDatabase.ProgressUpdater) null, (Object) null);
        }
    }

    /* access modifiers changed from: protected */
    public void broadcast(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select, String str) {
        getContext().sendBroadcast(new Intent(ACTION_DATABASE_CHANGE).putExtra(EXTRA_TABLE_NAME, select.tableName).putExtra(EXTRA_CHANGE_TYPE, str).putExtra(EXTRA_AFFECTED_ITEM_COUNT, getAffectedRowCount(sQLiteDatabase)));
    }

    public void calculateTransactionSize(long j, TransferGroup.Index index) {
        index.reset();
        List<TransferObject> castQuery = castQuery(new SQLQuery.Select(TABLE_TRANSFER, new String[0]).setWhere("groupId=?", String.valueOf(j)), TransferObject.class);
        index.assignees.addAll(TransferUtils.loadAssigneeList(this, j));
        if (castQuery.size() == 0) {
            castQuery.addAll(castQuery(new SQLQuery.Select(DIVIS_TRANSFER, new String[0]).setWhere("groupId=?", String.valueOf(j)), TransferObject.class));
        }
        for (TransferObject next : castQuery) {
            if (TransferObject.Type.INCOMING.equals(next.type)) {
                index.incoming += next.fileSize;
                index.incomingCount++;
                if (TransferObject.Flag.DONE.equals(next.flag)) {
                    index.incomingCountCompleted++;
                    index.incomingCompleted += next.fileSize;
                } else if (TransferObject.Flag.IN_PROGRESS.equals(next.flag)) {
                    index.incomingCompleted += next.flag.getBytesValue();
                }
            } else {
                index.outgoing += next.fileSize;
                index.outgoingCount++;
                if (TransferObject.Flag.DONE.equals(next.flag)) {
                    index.outgoingCountCompleted++;
                    index.outgoingCompleted += next.fileSize;
                } else if (TransferObject.Flag.IN_PROGRESS.equals(next.flag)) {
                    index.outgoingCompleted += next.flag.getBytesValue();
                }
            }
            if (!index.hasIssues && (TransferObject.Flag.INTERRUPTED.equals(next.flag) || TransferObject.Flag.REMOVED.equals(next.flag))) {
                index.hasIssues = true;
            }
        }
        index.calculated = true;
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.lang.String[], android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0023, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002f, code lost:
        if (r0 == 0) goto L_0x0032;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0032, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r0 != 0) goto L_0x0023;
     */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long getAffectedRowCount(android.database.sqlite.SQLiteDatabase r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            java.lang.String r3 = "SELECT changes() AS affected_row_count"
            android.database.Cursor r0 = r5.rawQuery(r3, r0)     // Catch:{ SQLException -> 0x002e, all -> 0x0027 }
            if (r0 == 0) goto L_0x0021
            int r5 = r0.getCount()     // Catch:{ SQLException -> 0x002e, all -> 0x0027 }
            if (r5 <= 0) goto L_0x0021
            boolean r5 = r0.moveToFirst()     // Catch:{ SQLException -> 0x002e, all -> 0x0027 }
            if (r5 == 0) goto L_0x0021
            java.lang.String r5 = "affected_row_count"
            int r5 = r0.getColumnIndex(r5)     // Catch:{ SQLException -> 0x002e, all -> 0x0027 }
            long r1 = r0.getLong(r5)     // Catch:{ SQLException -> 0x002e, all -> 0x0027 }
        L_0x0021:
            if (r0 == 0) goto L_0x0032
        L_0x0023:
            r0.close()
            goto L_0x0032
        L_0x0027:
            r5 = move-exception
            if (r0 == 0) goto L_0x002d
            r0.close()
        L_0x002d:
            throw r5
        L_0x002e:
            if (r0 == 0) goto L_0x0032
            goto L_0x0023
        L_0x0032:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.database.AccessDatabase.getAffectedRowCount(android.database.sqlite.SQLiteDatabase):long");
    }

    public SQLValues getDatabaseTables() {
        SQLValues sQLValues = new SQLValues();
        sQLValues.defineTable(TABLE_CLIPBOARD).define(new SQLValues.Column("id", SQLType.INTEGER, false)).define(new SQLValues.Column(FIELD_CLIPBOARD_TEXT, SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_CLIPBOARD_TIME, SQLType.LONG, false));
        sQLValues.defineTable(TABLE_DEVICES).define(new SQLValues.Column("deviceId", SQLType.TEXT, false)).define(new SQLValues.Column("user", SQLType.TEXT, false)).define(new SQLValues.Column("brand", SQLType.TEXT, false)).define(new SQLValues.Column("model", SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_DEVICES_BUILDNAME, SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_DEVICES_BUILDNUMBER, SQLType.INTEGER, false)).define(new SQLValues.Column(FIELD_DEVICES_LASTUSAGETIME, SQLType.INTEGER, false)).define(new SQLValues.Column(FIELD_DEVICES_ISRESTRICTED, SQLType.INTEGER, false)).define(new SQLValues.Column(FIELD_DEVICES_ISTRUSTED, SQLType.INTEGER, false)).define(new SQLValues.Column(FIELD_DEVICES_ISLOCALADDRESS, SQLType.INTEGER, false)).define(new SQLValues.Column(FIELD_DEVICES_TMPSECUREKEY, SQLType.INTEGER, true));
        sQLValues.defineTable(TABLE_DEVICECONNECTION).define(new SQLValues.Column(FIELD_DEVICECONNECTION_IPADDRESS, SQLType.TEXT, false)).define(new SQLValues.Column("deviceId", SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_DEVICECONNECTION_ADAPTERNAME, SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_DEVICECONNECTION_LASTCHECKEDDATE, SQLType.INTEGER, false));
        sQLValues.defineTable(TABLE_FILEBOOKMARK).define(new SQLValues.Column("title", SQLType.TEXT, false)).define(new SQLValues.Column("path", SQLType.TEXT, false));
        sQLValues.defineTable(TABLE_TRANSFER).define(new SQLValues.Column("id", SQLType.LONG, false)).define(new SQLValues.Column("groupId", SQLType.LONG, false)).define(new SQLValues.Column("deviceId", SQLType.TEXT, true)).define(new SQLValues.Column("file", SQLType.TEXT, true)).define(new SQLValues.Column("name", SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_TRANSFER_SIZE, SQLType.INTEGER, true)).define(new SQLValues.Column(FIELD_TRANSFER_MIME, SQLType.TEXT, true)).define(new SQLValues.Column("type", SQLType.TEXT, false)).define(new SQLValues.Column("directory", SQLType.TEXT, true)).define(new SQLValues.Column(FIELD_TRANSFER_ACCESSPORT, SQLType.INTEGER, true)).define(new SQLValues.Column("skippedBytes", SQLType.LONG, false)).define(new SQLValues.Column("flag", SQLType.TEXT, true));
        sQLValues.defineTable(DIVIS_TRANSFER).define(new SQLValues.Column("id", SQLType.LONG, false)).define(new SQLValues.Column("groupId", SQLType.LONG, false)).define(new SQLValues.Column("deviceId", SQLType.TEXT, true)).define(new SQLValues.Column("file", SQLType.TEXT, true)).define(new SQLValues.Column("name", SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_TRANSFER_SIZE, SQLType.INTEGER, true)).define(new SQLValues.Column(FIELD_TRANSFER_MIME, SQLType.TEXT, true)).define(new SQLValues.Column("type", SQLType.TEXT, false)).define(new SQLValues.Column("directory", SQLType.TEXT, true)).define(new SQLValues.Column(FIELD_TRANSFER_ACCESSPORT, SQLType.INTEGER, true)).define(new SQLValues.Column("skippedBytes", SQLType.LONG, false)).define(new SQLValues.Column("flag", SQLType.TEXT, true));
        sQLValues.defineTable(TABLE_TRANSFERASSIGNEE).define(new SQLValues.Column("groupId", SQLType.LONG, false)).define(new SQLValues.Column("deviceId", SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_TRANSFERASSIGNEE_CONNECTIONADAPTER, SQLType.TEXT, true)).define(new SQLValues.Column(FIELD_TRANSFERASSIGNEE_ISCLONE, SQLType.INTEGER, true));
        sQLValues.defineTable(TABLE_TRANSFERGROUP).define(new SQLValues.Column("id", SQLType.LONG, false)).define(new SQLValues.Column(FIELD_TRANSFERGROUP_DATECREATED, SQLType.LONG, false)).define(new SQLValues.Column(FIELD_TRANSFERGROUP_SAVEPATH, SQLType.TEXT, true)).define(new SQLValues.Column(FIELD_TRANSFERGROUP_ISSHAREDONWEB, SQLType.INTEGER, true));
        sQLValues.defineTable(TABLE_WRITABLEPATH).define(new SQLValues.Column("title", SQLType.TEXT, false)).define(new SQLValues.Column("path", SQLType.TEXT, false));
        return sQLValues;
    }

    public long insert(android.database.sqlite.SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        long insert = super.insert(sQLiteDatabase, str, str2, contentValues);
        broadcast(sQLiteDatabase, new SQLQuery.Select(str, new String[0]), TYPE_INSERT);
        return insert;
    }

    public <T, V extends DatabaseObject<T>> void insert(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, SQLiteDatabase.ProgressUpdater progressUpdater, T t) {
        super.insert(sQLiteDatabase, list, progressUpdater, t);
        for (String select : explodePerTable(list).keySet()) {
            broadcast(sQLiteDatabase, new SQLQuery.Select(select, new String[0]), TYPE_INSERT);
        }
    }

    public int remove(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select) {
        int remove = super.remove(sQLiteDatabase, select);
        broadcast(sQLiteDatabase, select, TYPE_REMOVE);
        return remove;
    }

    public <T, V extends DatabaseObject<T>> void remove(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, SQLiteDatabase.ProgressUpdater progressUpdater, T t) {
        super.remove(sQLiteDatabase, list, progressUpdater, t);
        for (String select : explodePerTable(list).keySet()) {
            broadcast(sQLiteDatabase, new SQLQuery.Select(select, new String[0]), TYPE_REMOVE);
        }
    }

    public void removeAsynchronous(Activity activity, final DatabaseObject databaseObject) {
        removeAsynchronous(activity, (Runnable) new Runnable() {
            public void run() {
                AccessDatabase.this.remove(databaseObject);
            }
        });
    }

    public void removeAsynchronous(Activity activity, final List<? extends DatabaseObject> list) {
        removeAsynchronous(activity, (Runnable) new Runnable() {
            public void run() {
                AccessDatabase.this.remove(list);
            }
        });
    }

    public void removeAsynchronous(Activity activity, final Runnable runnable) {
        if (activity != null && !activity.isFinishing()) {
            new WorkerService.RunningTask() {
                /* access modifiers changed from: protected */
                public void onRun() {
                    if (getService() != null) {
                        publishStatusText("-");
                    }
                    runnable.run();
                }
            }.setTitle(activity.getString(R.string.mesg_removing)).run(activity);
        }
    }

    public int update(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select, ContentValues contentValues) {
        int update = super.update(sQLiteDatabase, select, contentValues);
        broadcast(sQLiteDatabase, select, TYPE_UPDATE);
        return update;
    }

    public <T, V extends DatabaseObject<T>> void update(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, SQLiteDatabase.ProgressUpdater progressUpdater, T t) {
        super.update(sQLiteDatabase, list, progressUpdater, t);
        for (String select : explodePerTable(list).keySet()) {
            broadcast(sQLiteDatabase, new SQLQuery.Select(select, new String[0]), TYPE_UPDATE);
        }
    }
}
