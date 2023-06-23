package com.genonbeta.TrebleShot.object;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.io.DocumentFile;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

public class TransferObject implements DatabaseObject<TransferGroup>, Editable {
    public int accessPort;
    public String deviceId;
    public String directory;
    public String file;
    public String fileMimeType;
    public long fileSize;
    public Flag flag;
    public String friendlyName;
    public long groupId;
    private boolean mIsSelected;
    public long requestId;
    public long skippedBytes;
    public Type type;

    public enum Type {
        INCOMING,
        OUTGOING
    }

    @Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE, ElementType.PACKAGE})
    @Retention(RetentionPolicy.CLASS)
    public @interface Virtual {
    }

    public boolean comparisonSupported() {
        return true;
    }

    public void onCreateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, TransferGroup transferGroup) {
    }

    public void onUpdateObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, TransferGroup transferGroup) {
    }

    public TransferObject() {
        this.fileSize = 0;
        this.type = Type.INCOMING;
        this.flag = Flag.PENDING;
        this.mIsSelected = false;
    }

    public TransferObject(long j, long j2, String str, String str2, String str3, long j3, Type type2) {
        this(j, j2, (String) null, str, str2, str3, j3, type2);
    }

    public TransferObject(long j, long j2, String str, String str2, String str3, String str4, long j3, Type type2) {
        this.fileSize = 0;
        this.type = Type.INCOMING;
        this.flag = Flag.PENDING;
        this.mIsSelected = false;
        this.friendlyName = str2;
        this.file = str3;
        this.fileSize = j3;
        this.fileMimeType = str4;
        this.deviceId = str;
        this.requestId = j;
        this.groupId = j2;
        this.type = type2;
    }

    public TransferObject(long j, String str, Type type2) {
        this.fileSize = 0;
        this.type = Type.INCOMING;
        this.flag = Flag.PENDING;
        this.mIsSelected = false;
        this.requestId = j;
        this.deviceId = str;
        this.type = type2;
    }

    public TransferObject(CursorItem cursorItem) {
        this.fileSize = 0;
        this.type = Type.INCOMING;
        this.flag = Flag.PENDING;
        this.mIsSelected = false;
        reconstruct(cursorItem);
    }

    public boolean applyFilter(String[] strArr) {
        for (String contains : strArr) {
            if (this.friendlyName.contains(contains)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0025, code lost:
        r0 = r5.deviceId;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.genonbeta.TrebleShot.object.TransferObject
            if (r0 != 0) goto L_0x0009
            boolean r6 = super.equals(r6)
            return r6
        L_0x0009:
            com.genonbeta.TrebleShot.object.TransferObject r6 = (com.genonbeta.TrebleShot.object.TransferObject) r6
            long r0 = r6.requestId
            long r2 = r5.requestId
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x0033
            com.genonbeta.TrebleShot.object.TransferObject$Type r0 = r5.type
            com.genonbeta.TrebleShot.object.TransferObject$Type r1 = r6.type
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0033
            java.lang.String r0 = r5.deviceId
            if (r0 != 0) goto L_0x0025
            java.lang.String r0 = r6.deviceId
            if (r0 == 0) goto L_0x0031
        L_0x0025:
            java.lang.String r0 = r5.deviceId
            if (r0 == 0) goto L_0x0033
            java.lang.String r6 = r6.deviceId
            boolean r6 = r0.equals(r6)
            if (r6 == 0) goto L_0x0033
        L_0x0031:
            r6 = 1
            goto L_0x0034
        L_0x0033:
            r6 = 0
        L_0x0034:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.object.TransferObject.equals(java.lang.Object):boolean");
    }

    public boolean isDivisionObject() {
        return this.deviceId == null;
    }

    public SQLQuery.Select getWhere() {
        String str;
        if (isDivisionObject()) {
            str = String.format("%s = ? AND %s = ?", new Object[]{"id", "type"});
        } else {
            str = String.format("%s = ? AND %s = ? AND %s = ?", new Object[]{"id", "type", "deviceId"});
        }
        if (isDivisionObject()) {
            return new SQLQuery.Select(AccessDatabase.DIVIS_TRANSFER, new String[0]).setWhere(str, String.valueOf(this.requestId), this.type.toString());
        }
        return new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere(str, String.valueOf(this.requestId), this.type.toString(), this.deviceId);
    }

    public ContentValues getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(this.requestId));
        contentValues.put("groupId", Long.valueOf(this.groupId));
        contentValues.put("deviceId", this.deviceId);
        contentValues.put("name", this.friendlyName);
        contentValues.put(AccessDatabase.FIELD_TRANSFER_SIZE, Long.valueOf(this.fileSize));
        contentValues.put(AccessDatabase.FIELD_TRANSFER_MIME, this.fileMimeType);
        contentValues.put("flag", this.flag.toString());
        contentValues.put("type", this.type.toString());
        contentValues.put("file", this.file);
        contentValues.put(AccessDatabase.FIELD_TRANSFER_ACCESSPORT, Integer.valueOf(this.accessPort));
        contentValues.put("skippedBytes", Long.valueOf(this.skippedBytes));
        contentValues.put("directory", this.directory);
        return contentValues;
    }

    public void reconstruct(CursorItem cursorItem) {
        this.friendlyName = cursorItem.getString("name");
        this.file = cursorItem.getString("file");
        this.fileSize = cursorItem.getLong(AccessDatabase.FIELD_TRANSFER_SIZE);
        this.fileMimeType = cursorItem.getString(AccessDatabase.FIELD_TRANSFER_MIME);
        this.requestId = cursorItem.getLong("id");
        this.groupId = cursorItem.getLong("groupId");
        this.deviceId = cursorItem.getString("deviceId");
        this.type = Type.valueOf(cursorItem.getString("type"));
        try {
            this.flag = Flag.valueOf(cursorItem.getString("flag"));
        } catch (Exception unused) {
            Flag flag2 = Flag.IN_PROGRESS;
            this.flag = flag2;
            flag2.setBytesValue(cursorItem.getLong("flag"));
        }
        this.accessPort = cursorItem.getInt(AccessDatabase.FIELD_TRANSFER_ACCESSPORT);
        this.skippedBytes = cursorItem.getLong("skippedBytes");
        this.directory = cursorItem.getString("directory");
    }

    public void onRemoveObject(SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, TransferGroup transferGroup) {
        if (Flag.INTERRUPTED.equals(this.flag) && Type.INCOMING.equals(this.type)) {
            if (transferGroup == null) {
                try {
                    transferGroup = new TransferGroup(this.groupId);
                    sQLiteDatabase2.reconstruct(transferGroup);
                } catch (Exception unused) {
                    return;
                }
            }
            DocumentFile incomingPseudoFile = FileUtils.getIncomingPseudoFile(sQLiteDatabase2.getContext(), this, transferGroup, false);
            if (incomingPseudoFile != null && incomingPseudoFile.isFile()) {
                incomingPseudoFile.delete();
            }
        }
    }

    public String getComparableName() {
        return getSelectableTitle();
    }

    public long getComparableDate() {
        return this.requestId;
    }

    public long getComparableSize() {
        return this.fileSize;
    }

    public long getId() {
        return (long) String.format("%d_%d_%s", new Object[]{Long.valueOf(this.requestId), Integer.valueOf(this.type.ordinal()), this.deviceId}).hashCode();
    }

    public void setId(long j) {
        this.requestId = j;
    }

    public String getSelectableTitle() {
        return this.friendlyName;
    }

    public boolean isSelectableSelected() {
        return this.mIsSelected;
    }

    public boolean setSelectableSelected(boolean z) {
        this.mIsSelected = z;
        return true;
    }

    public enum Flag {
        INTERRUPTED,
        PENDING,
        REMOVED,
        IN_PROGRESS,
        DONE;
        
        private long bytesValue;

        public long getBytesValue() {
            return this.bytesValue;
        }

        public void setBytesValue(long j) {
            this.bytesValue = j;
        }

        public String toString() {
            if (getBytesValue() > 0) {
                return String.valueOf(getBytesValue());
            }
            return super.toString();
        }
    }
}
