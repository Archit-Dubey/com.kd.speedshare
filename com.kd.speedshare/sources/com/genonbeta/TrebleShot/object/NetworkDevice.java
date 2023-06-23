package com.genonbeta.TrebleShot.object;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLiteDatabase;

public class NetworkDevice implements DatabaseObject<Object> {
    public String brand;
    public String deviceId;
    public boolean isLocalAddress = false;
    public boolean isRestricted = false;
    public boolean isTrusted = false;
    public long lastUsageTime;
    public String model;
    public String nickname;
    public int tmpSecureKey;
    public String versionName;
    public int versionNumber;

    public void onCreateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public void onUpdateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
    }

    public NetworkDevice() {
    }

    public NetworkDevice(String str) {
        this.deviceId = str;
    }

    public NetworkDevice(CursorItem cursorItem) {
        reconstruct(cursorItem);
    }

    public String generatePictureId() {
        return String.format("picture_%s", new Object[]{this.deviceId});
    }

    public SQLQuery.Select getWhere() {
        return new SQLQuery.Select(AccessDatabase.TABLE_DEVICES, new String[0]).setWhere("deviceId=?", this.deviceId);
    }

    public ContentValues getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("deviceId", this.deviceId);
        contentValues.put("user", this.nickname);
        contentValues.put("brand", this.brand);
        contentValues.put("model", this.model);
        contentValues.put(AccessDatabase.FIELD_DEVICES_BUILDNAME, this.versionName);
        contentValues.put(AccessDatabase.FIELD_DEVICES_BUILDNUMBER, Integer.valueOf(this.versionNumber));
        contentValues.put(AccessDatabase.FIELD_DEVICES_LASTUSAGETIME, Long.valueOf(this.lastUsageTime));
        contentValues.put(AccessDatabase.FIELD_DEVICES_ISRESTRICTED, Integer.valueOf(this.isRestricted ? 1 : 0));
        contentValues.put(AccessDatabase.FIELD_DEVICES_ISTRUSTED, Integer.valueOf(this.isTrusted ? 1 : 0));
        contentValues.put(AccessDatabase.FIELD_DEVICES_ISLOCALADDRESS, Integer.valueOf(this.isLocalAddress ? 1 : 0));
        contentValues.put(AccessDatabase.FIELD_DEVICES_TMPSECUREKEY, Integer.valueOf(this.tmpSecureKey));
        return contentValues;
    }

    public void reconstruct(CursorItem cursorItem) {
        this.deviceId = cursorItem.getString("deviceId");
        this.nickname = cursorItem.getString("user");
        this.brand = cursorItem.getString("brand");
        this.model = cursorItem.getString("model");
        this.versionName = cursorItem.getString(AccessDatabase.FIELD_DEVICES_BUILDNAME);
        this.versionNumber = cursorItem.getInt(AccessDatabase.FIELD_DEVICES_BUILDNUMBER);
        this.lastUsageTime = cursorItem.getLong(AccessDatabase.FIELD_DEVICES_LASTUSAGETIME);
        boolean z = false;
        this.isTrusted = cursorItem.getInt(AccessDatabase.FIELD_DEVICES_ISTRUSTED) == 1;
        this.isRestricted = cursorItem.getInt(AccessDatabase.FIELD_DEVICES_ISRESTRICTED) == 1;
        if (cursorItem.getInt(AccessDatabase.FIELD_DEVICES_ISLOCALADDRESS) == 1) {
            z = true;
        }
        this.isLocalAddress = z;
        this.tmpSecureKey = cursorItem.getInt(AccessDatabase.FIELD_DEVICES_TMPSECUREKEY);
    }

    public void onRemoveObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
        sQLiteDatabase2.getContext().deleteFile(generatePictureId());
        sQLiteDatabase2.remove(sQLiteDatabase, new SQLQuery.Select(AccessDatabase.TABLE_DEVICECONNECTION, new String[0]).setWhere("deviceId=?", this.deviceId));
        for (TransferGroup.Assignee next : sQLiteDatabase2.castQuery(sQLiteDatabase, new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERASSIGNEE, new String[0]).setWhere("deviceId=?", this.deviceId), TransferGroup.Assignee.class, (SQLiteDatabase.CastQueryListener) null)) {
            sQLiteDatabase2.remove((DatabaseObject) next);
            try {
                TransferGroup transferGroup = new TransferGroup(next.groupId);
                sQLiteDatabase2.reconstruct(sQLiteDatabase, transferGroup);
                if (sQLiteDatabase2.castQuery(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERASSIGNEE, new String[0]).setWhere("groupId=?", String.valueOf(transferGroup.groupId)), TransferGroup.Assignee.class).size() == 0) {
                    sQLiteDatabase2.remove((DatabaseObject) transferGroup);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static class Connection implements DatabaseObject<NetworkDevice> {
        public String adapterName;
        public String deviceId;
        public String ipAddress;
        public long lastCheckedDate;

        public void onCreateObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        }

        public void onRemoveObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        }

        public void onUpdateObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, NetworkDevice networkDevice) {
        }

        public Connection() {
        }

        public Connection(String str, String str2, String str3, long j) {
            this.adapterName = str;
            this.ipAddress = str2;
            this.deviceId = str3;
            this.lastCheckedDate = j;
        }

        public Connection(String str, String str2) {
            this.deviceId = str;
            this.adapterName = str2;
        }

        public Connection(TransferGroup.Assignee assignee) {
            this(assignee.deviceId, assignee.connectionAdapter);
        }

        public Connection(String str) {
            this.ipAddress = str;
        }

        public Connection(CursorItem cursorItem) {
            reconstruct(cursorItem);
        }

        public SQLQuery.Select getWhere() {
            SQLQuery.Select select = new SQLQuery.Select(AccessDatabase.TABLE_DEVICECONNECTION, new String[0]);
            String str = this.ipAddress;
            if (str == null) {
                return select.setWhere("deviceId=? AND adapterName=?", this.deviceId, this.adapterName);
            }
            return select.setWhere("ipAddress=?", str);
        }

        public ContentValues getValues() {
            ContentValues contentValues = new ContentValues();
            contentValues.put("deviceId", this.deviceId);
            contentValues.put(AccessDatabase.FIELD_DEVICECONNECTION_ADAPTERNAME, this.adapterName);
            contentValues.put(AccessDatabase.FIELD_DEVICECONNECTION_IPADDRESS, this.ipAddress);
            contentValues.put(AccessDatabase.FIELD_DEVICECONNECTION_LASTCHECKEDDATE, Long.valueOf(this.lastCheckedDate));
            return contentValues;
        }

        public void reconstruct(CursorItem cursorItem) {
            this.adapterName = cursorItem.getString(AccessDatabase.FIELD_DEVICECONNECTION_ADAPTERNAME);
            this.ipAddress = cursorItem.getString(AccessDatabase.FIELD_DEVICECONNECTION_IPADDRESS);
            this.deviceId = cursorItem.getString("deviceId");
            this.lastCheckedDate = cursorItem.getLong(AccessDatabase.FIELD_DEVICECONNECTION_LASTCHECKEDDATE);
        }
    }
}
