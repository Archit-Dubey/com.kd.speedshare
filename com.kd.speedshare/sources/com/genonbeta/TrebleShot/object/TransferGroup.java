package com.genonbeta.TrebleShot.object;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLiteDatabase;
import com.genonbeta.android.framework.object.Selectable;
import java.util.ArrayList;
import java.util.List;

public class TransferGroup implements DatabaseObject<NetworkDevice>, Selectable {
    public long dateCreated;
    public long groupId;
    public boolean isServedOnWeb;
    private boolean mIsSelected = false;
    public String savePath;

    public void onUpdateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
    }

    public TransferGroup() {
    }

    public TransferGroup(long j) {
        this.groupId = j;
    }

    public TransferGroup(CursorItem cursorItem) {
        reconstruct(cursorItem);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TransferGroup) && ((TransferGroup) obj).groupId == this.groupId;
    }

    public void reconstruct(CursorItem cursorItem) {
        this.groupId = cursorItem.getLong("id");
        this.savePath = cursorItem.getString(AccessDatabase.FIELD_TRANSFERGROUP_SAVEPATH);
        this.dateCreated = cursorItem.getLong(AccessDatabase.FIELD_TRANSFERGROUP_DATECREATED);
        boolean z = true;
        if (cursorItem.getInt(AccessDatabase.FIELD_TRANSFERGROUP_ISSHAREDONWEB) != 1) {
            z = false;
        }
        this.isServedOnWeb = z;
    }

    public boolean isSelectableSelected() {
        return this.mIsSelected;
    }

    public String getSelectableTitle() {
        return String.valueOf(this.groupId);
    }

    public ContentValues getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(this.groupId));
        contentValues.put(AccessDatabase.FIELD_TRANSFERGROUP_SAVEPATH, this.savePath);
        contentValues.put(AccessDatabase.FIELD_TRANSFERGROUP_DATECREATED, Long.valueOf(this.dateCreated));
        contentValues.put(AccessDatabase.FIELD_TRANSFERGROUP_ISSHAREDONWEB, Integer.valueOf(this.isServedOnWeb ? 1 : 0));
        return contentValues;
    }

    public SQLQuery.Select getWhere() {
        return new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERGROUP, new String[0]).setWhere("id=?", String.valueOf(this.groupId));
    }

    public boolean setSelectableSelected(boolean z) {
        this.mIsSelected = z;
        return true;
    }

    public void onCreateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        this.dateCreated = System.currentTimeMillis();
    }

    public void onRemoveObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        sQLiteDatabase2.remove(new SQLQuery.Select(AccessDatabase.DIVIS_TRANSFER, new String[0]).setWhere(String.format("%s = ?", new Object[]{"groupId"}), String.valueOf(this.groupId)));
        sQLiteDatabase2.remove(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERASSIGNEE, new String[0]).setWhere("groupId=?", String.valueOf(this.groupId)));
        com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase3 = sQLiteDatabase2;
        SQLiteDatabase sQLiteDatabase4 = sQLiteDatabase;
        sQLiteDatabase3.removeAsObject(sQLiteDatabase4, new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere("groupId=?", String.valueOf(this.groupId)), TransferObject.class, (SQLiteDatabase.CastQueryListener) null, this);
    }

    public static class Index {
        public List<ShowingAssignee> assignees = new ArrayList();
        public boolean calculated = false;
        public boolean hasIssues = false;
        public long incoming = 0;
        public long incomingCompleted = 0;
        public int incomingCount = 0;
        public int incomingCountCompleted;
        public long outgoing = 0;
        public long outgoingCompleted = 0;
        public int outgoingCount = 0;
        public int outgoingCountCompleted;

        public void reset() {
            this.calculated = false;
            this.hasIssues = false;
            this.incoming = 0;
            this.outgoing = 0;
            this.incomingCount = 0;
            this.outgoingCount = 0;
            this.assignees.clear();
        }
    }

    public static class Assignee implements DatabaseObject<NetworkDevice> {
        public String connectionAdapter;
        public String deviceId;
        public long groupId;

        public void onCreateObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        }

        public void onUpdateObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        }

        public Assignee() {
        }

        public Assignee(long j, String str) {
            this.groupId = j;
            this.deviceId = str;
        }

        public Assignee(TransferGroup transferGroup, NetworkDevice networkDevice) {
            this(transferGroup.groupId, networkDevice.deviceId);
        }

        public Assignee(long j, String str, String str2) {
            this(j, str);
            this.connectionAdapter = str2;
        }

        public Assignee(TransferGroup transferGroup, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
            this(transferGroup.groupId, networkDevice.deviceId, connection.adapterName);
        }

        public SQLQuery.Select getWhere() {
            return new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERASSIGNEE, new String[0]).setWhere("deviceId=? AND groupId=?", this.deviceId, String.valueOf(this.groupId));
        }

        public ContentValues getValues() {
            ContentValues contentValues = new ContentValues();
            contentValues.put("deviceId", this.deviceId);
            contentValues.put("groupId", Long.valueOf(this.groupId));
            contentValues.put(AccessDatabase.FIELD_TRANSFERASSIGNEE_CONNECTIONADAPTER, this.connectionAdapter);
            contentValues.put(AccessDatabase.FIELD_TRANSFERASSIGNEE_ISCLONE, 1);
            return contentValues;
        }

        public void reconstruct(CursorItem cursorItem) {
            this.deviceId = cursorItem.getString("deviceId");
            this.groupId = cursorItem.getLong("groupId");
            this.connectionAdapter = cursorItem.getString(AccessDatabase.FIELD_TRANSFERASSIGNEE_CONNECTIONADAPTER);
        }

        public void onRemoveObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
            SQLQuery.Select createTransferSelection = TransferUtils.createTransferSelection(this.groupId, this.deviceId);
            try {
                TransferGroup transferGroup = new TransferGroup(this.groupId);
                sQLiteDatabase2.reconstruct(sQLiteDatabase, transferGroup);
                sQLiteDatabase2.removeAsObject(sQLiteDatabase, createTransferSelection, TransferObject.class, (SQLiteDatabase.CastQueryListener) null, transferGroup);
            } catch (Exception unused) {
                sQLiteDatabase2.remove(createTransferSelection);
            }
        }
    }
}
