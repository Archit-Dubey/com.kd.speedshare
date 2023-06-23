package com.genonbeta.android.framework.preference;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.genonbeta.android.database.CursorItem;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLType;
import com.genonbeta.android.database.SQLValues;
import com.genonbeta.android.database.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DbSharablePreferences extends SQLiteDatabase implements SharedPreferences {
    public static final String DATABASE_NAME = (DbSharablePreferences.class.getSimpleName() + ".db");
    public static final int DATABASE_VERSION = 1;
    public static final String FIELD_KEY = "__key";
    public static final String FIELD_TYPE = "__type";
    public static final String FIELD_VALUE = "__value";
    /* access modifiers changed from: private */
    public String mCategory;
    /* access modifiers changed from: private */
    public List<SharedPreferences.OnSharedPreferenceChangeListener> mChangeListener;
    private boolean mSyncReliant;
    /* access modifiers changed from: private */
    public Map<String, Object> mSyncedList;
    /* access modifiers changed from: private */
    public AsynchronousUpdateListener mUpdateListener;

    public interface AsynchronousUpdateListener {
        void onCommitComplete();
    }

    public enum Type {
        INTEGER,
        STRING,
        FLOAT,
        BOOLEAN,
        LONG
    }

    public Set<String> getStringSet(String str, Set<String> set) {
        return null;
    }

    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
    }

    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public DbSharablePreferences(Context context, String str, boolean z) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.mSyncReliant = false;
        this.mChangeListener = new ArrayList();
        this.mSyncedList = new ArrayMap();
        this.mCategory = str;
        this.mSyncReliant = z;
        initialize();
    }

    public DbSharablePreferences(Context context, String str) {
        this(context, str, false);
    }

    private void initialize() {
        SQLValues sQLValues = new SQLValues();
        sQLValues.defineTable(this.mCategory, true).define(new SQLValues.Column(FIELD_KEY, SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_TYPE, SQLType.TEXT, false)).define(new SQLValues.Column(FIELD_VALUE, SQLType.TEXT, true));
        SQLQuery.createTables(getWritableDatabase(), sQLValues);
        setSyncReliant(this.mSyncReliant);
    }

    public Map<String, ?> getAll() {
        List<StoredData> castQuery = castQuery(new SQLQuery.Select(this.mCategory, new String[0]), StoredData.class);
        ArrayMap arrayMap = new ArrayMap();
        for (StoredData next : castQuery) {
            arrayMap.put(next.getKey(), next.getTypedValue());
        }
        return arrayMap;
    }

    public synchronized Map<String, ?> getSyncedList() {
        return this.mSyncedList;
    }

    public boolean isSyncReliant() {
        return this.mSyncReliant;
    }

    public String getString(String str, String str2) {
        return (String) valueCast(str, String.class, str2);
    }

    public int getInt(String str, int i) {
        return ((Integer) valueCast(str, Integer.class, Integer.valueOf(i))).intValue();
    }

    public long getLong(String str, long j) {
        return ((Long) valueCast(str, Long.class, Long.valueOf(j))).longValue();
    }

    public float getFloat(String str, float f) {
        return ((Float) valueCast(str, Float.class, Float.valueOf(f))).floatValue();
    }

    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) valueCast(str, Boolean.class, Boolean.valueOf(z))).booleanValue();
    }

    public boolean contains(String str) {
        if (isSyncReliant()) {
            return this.mSyncedList.containsKey(str);
        }
        try {
            reconstruct(new StoredData(this.mCategory, str));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public SharedPreferences.Editor edit() {
        return new DbEditor();
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mChangeListener.add(onSharedPreferenceChangeListener);
    }

    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mChangeListener.remove(onSharedPreferenceChangeListener);
    }

    public void setSyncReliant(boolean z) {
        this.mSyncReliant = z;
        if (z) {
            sync();
        }
    }

    public DbSharablePreferences setUpdateListener(AsynchronousUpdateListener asynchronousUpdateListener) {
        this.mUpdateListener = asynchronousUpdateListener;
        return this;
    }

    public void sync() {
        ArrayMap arrayMap = new ArrayMap();
        this.mSyncedList = arrayMap;
        arrayMap.putAll(getAll());
    }

    public <T> T valueCast(String str, Class<T> cls, T t) {
        if (!isSyncReliant()) {
            StoredData storedData = new StoredData(this.mCategory, str);
            try {
                reconstruct(storedData);
                return storedData.getTypedValue();
            } catch (Exception e) {
                String simpleName = DbSharablePreferences.class.getSimpleName();
                Log.d(simpleName, "Failed to read and returning the default value: " + str + "; default: " + t + "; requested type: " + cls.getSimpleName() + "; error msg: " + e.getMessage());
            }
        } else if (getSyncedList().containsKey(str)) {
            return getSyncedList().get(str);
        }
        return t;
    }

    public static class StoredData implements DatabaseObject<Object> {
        private String mCategory;
        private String mKey;
        private Type mType;
        private String mValue;

        public void onCreateObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
        }

        public void onRemoveObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
        }

        public void onUpdateObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.genonbeta.android.database.SQLiteDatabase sQLiteDatabase2, Object obj) {
        }

        public StoredData() {
        }

        public StoredData(String str, String str2) {
            this.mCategory = str;
            this.mKey = str2;
        }

        public StoredData(String str, String str2, Object obj, Type type) {
            this(str, str2);
            this.mType = type;
            if (obj != null) {
                this.mValue = String.valueOf(obj);
            }
        }

        public StoredData(String str, String str2, boolean z) {
            this(str, str2, Boolean.valueOf(z), Type.BOOLEAN);
        }

        public StoredData(String str, String str2, float f) {
            this(str, str2, Float.valueOf(f), Type.FLOAT);
        }

        public StoredData(String str, String str2, int i) {
            this(str, str2, Integer.valueOf(i), Type.INTEGER);
        }

        public StoredData(String str, String str2, long j) {
            this(str, str2, Long.valueOf(j), Type.LONG);
        }

        public StoredData(String str, String str2, String str3) {
            this(str, str2, str3, Type.STRING);
        }

        public String getKey() {
            return this.mKey;
        }

        public Type getType() {
            return this.mType;
        }

        public Object getTypedValue() {
            try {
                int i = AnonymousClass1.$SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type[this.mType.ordinal()];
                if (i == 1) {
                    return Boolean.valueOf(this.mValue);
                }
                if (i == 2) {
                    return Float.valueOf(this.mValue);
                }
                if (i == 3) {
                    return Integer.valueOf(this.mValue);
                }
                if (i != 4) {
                    return this.mValue;
                }
                return Long.valueOf(this.mValue);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public SQLQuery.Select getWhere() {
            return new SQLQuery.Select(this.mCategory, new String[0]).setWhere("__key=?", this.mKey);
        }

        public ContentValues getValues() {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DbSharablePreferences.FIELD_KEY, this.mKey);
            contentValues.put(DbSharablePreferences.FIELD_VALUE, String.valueOf(this.mValue));
            contentValues.put(DbSharablePreferences.FIELD_TYPE, this.mType.toString());
            return contentValues;
        }

        public void reconstruct(CursorItem cursorItem) {
            this.mKey = cursorItem.getString(DbSharablePreferences.FIELD_KEY);
            this.mValue = cursorItem.getString(DbSharablePreferences.FIELD_VALUE);
            this.mType = Type.valueOf(cursorItem.getString(DbSharablePreferences.FIELD_TYPE));
        }
    }

    /* renamed from: com.genonbeta.android.framework.preference.DbSharablePreferences$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        static {
            /*
                com.genonbeta.android.framework.preference.DbSharablePreferences$Type[] r0 = com.genonbeta.android.framework.preference.DbSharablePreferences.Type.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type = r0
                com.genonbeta.android.framework.preference.DbSharablePreferences$Type r1 = com.genonbeta.android.framework.preference.DbSharablePreferences.Type.BOOLEAN     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = $SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type     // Catch:{ NoSuchFieldError -> 0x001d }
                com.genonbeta.android.framework.preference.DbSharablePreferences$Type r1 = com.genonbeta.android.framework.preference.DbSharablePreferences.Type.FLOAT     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type     // Catch:{ NoSuchFieldError -> 0x0028 }
                com.genonbeta.android.framework.preference.DbSharablePreferences$Type r1 = com.genonbeta.android.framework.preference.DbSharablePreferences.Type.INTEGER     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = $SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type     // Catch:{ NoSuchFieldError -> 0x0033 }
                com.genonbeta.android.framework.preference.DbSharablePreferences$Type r1 = com.genonbeta.android.framework.preference.DbSharablePreferences.Type.LONG     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.android.framework.preference.DbSharablePreferences.AnonymousClass1.<clinit>():void");
        }
    }

    public class DbEditor implements SharedPreferences.Editor {
        private List<StoredData> mPendingPublish = new ArrayList();
        private List<StoredData> mPendingRemoval = new ArrayList();

        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            return this;
        }

        public DbEditor() {
        }

        /* access modifiers changed from: protected */
        public void execute() {
            ArrayMap arrayMap = new ArrayMap();
            if (DbSharablePreferences.this.isSyncReliant()) {
                arrayMap.putAll(DbSharablePreferences.this.mSyncedList);
            }
            ArrayList<StoredData> arrayList = new ArrayList<>(this.mPendingRemoval);
            ArrayList<StoredData> arrayList2 = new ArrayList<>(this.mPendingPublish);
            for (StoredData storedData : arrayList) {
                DbSharablePreferences.this.remove((DatabaseObject) storedData);
                if (DbSharablePreferences.this.isSyncReliant()) {
                    arrayMap.remove(storedData.getKey());
                }
                for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChanged : DbSharablePreferences.this.mChangeListener) {
                    onSharedPreferenceChanged.onSharedPreferenceChanged(DbSharablePreferences.this, storedData.getKey());
                }
            }
            for (StoredData storedData2 : arrayList2) {
                DbSharablePreferences.this.publish((DatabaseObject) storedData2);
                if (DbSharablePreferences.this.isSyncReliant()) {
                    arrayMap.put(storedData2.getKey(), storedData2.getTypedValue());
                }
                for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChanged2 : DbSharablePreferences.this.mChangeListener) {
                    onSharedPreferenceChanged2.onSharedPreferenceChanged(DbSharablePreferences.this, storedData2.getKey());
                }
            }
            this.mPendingRemoval = new ArrayList();
            this.mPendingPublish = new ArrayList();
            if (DbSharablePreferences.this.isSyncReliant()) {
                Map unused = DbSharablePreferences.this.mSyncedList = arrayMap;
                if (DbSharablePreferences.this.mUpdateListener != null) {
                    DbSharablePreferences.this.mUpdateListener.onCommitComplete();
                }
            }
        }

        public SharedPreferences.Editor putString(String str, String str2) {
            this.mPendingPublish.add(new StoredData(DbSharablePreferences.this.mCategory, str, str2));
            return this;
        }

        public SharedPreferences.Editor putInt(String str, int i) {
            this.mPendingPublish.add(new StoredData(DbSharablePreferences.this.mCategory, str, i));
            return this;
        }

        public SharedPreferences.Editor putLong(String str, long j) {
            this.mPendingPublish.add(new StoredData(DbSharablePreferences.this.mCategory, str, j));
            return this;
        }

        public SharedPreferences.Editor putFloat(String str, float f) {
            this.mPendingPublish.add(new StoredData(DbSharablePreferences.this.mCategory, str, f));
            return this;
        }

        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.mPendingPublish.add(new StoredData(DbSharablePreferences.this.mCategory, str, z));
            return this;
        }

        public SharedPreferences.Editor remove(String str) {
            this.mPendingRemoval.add(new StoredData(DbSharablePreferences.this.mCategory, str));
            return this;
        }

        public SharedPreferences.Editor clear() {
            DbSharablePreferences.this.remove(new SQLQuery.Select(DbSharablePreferences.this.mCategory, new String[0]));
            return this;
        }

        public boolean commit() {
            apply();
            return true;
        }

        public void apply() {
            if (DbSharablePreferences.this.isSyncReliant()) {
                new Thread() {
                    public void run() {
                        DbEditor.this.execute();
                    }
                }.run();
            } else {
                execute();
            }
        }
    }
}
