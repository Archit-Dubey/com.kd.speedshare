package com.genonbeta.android.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.exception.ReconstructionFailedException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class SQLiteDatabase extends SQLiteOpenHelper {
    private Context mContext;

    public interface CastQueryListener<T extends DatabaseObject> {
        void onObjectReconstructed(SQLiteDatabase sQLiteDatabase, CursorItem cursorItem, T t);
    }

    public interface ProgressUpdater {
        void onProgressChange(int i, int i2);

        boolean onProgressState();
    }

    public SQLiteDatabase(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        this.mContext = context;
    }

    public void bindContentValue(SQLiteStatement sQLiteStatement, int i, Object obj) {
        String str;
        if (obj == null) {
            sQLiteStatement.bindNull(i);
        } else if (obj instanceof Long) {
            sQLiteStatement.bindLong(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            sQLiteStatement.bindLong(i, (long) ((Integer) obj).intValue());
        } else if (obj instanceof Double) {
            sQLiteStatement.bindDouble(i, ((Double) obj).doubleValue());
        } else if (obj instanceof byte[]) {
            sQLiteStatement.bindBlob(i, (byte[]) obj);
        } else {
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                str = String.valueOf(obj);
            }
            sQLiteStatement.bindString(i, str);
        }
    }

    public <T extends DatabaseObject> List<T> castQuery(SQLQuery.Select select, Class<T> cls) {
        return castQuery(select, cls, (CastQueryListener) null);
    }

    public <T extends DatabaseObject> List<T> castQuery(SQLQuery.Select select, Class<T> cls, CastQueryListener<T> castQueryListener) {
        return castQuery(getReadableDatabase(), select, cls, castQueryListener);
    }

    public <T extends DatabaseObject> List<T> castQuery(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select, Class<T> cls, CastQueryListener<T> castQueryListener) {
        ArrayList arrayList = new ArrayList();
        try {
            for (CursorItem next : getTable(sQLiteDatabase, select)) {
                DatabaseObject databaseObject = (DatabaseObject) cls.newInstance();
                databaseObject.reconstruct(next);
                if (castQueryListener != null) {
                    castQueryListener.onObjectReconstructed(this, next, databaseObject);
                }
                arrayList.add(databaseObject);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public <T, V extends DatabaseObject<T>> Map<String, List<V>> explodePerTable(List<V> list) {
        HashMap hashMap = new HashMap();
        for (V v : list) {
            String str = v.getWhere().tableName;
            List list2 = (List) hashMap.get(str);
            if (list2 == null) {
                list2 = new ArrayList();
                hashMap.put(str, list2);
            }
            list2.add(v);
        }
        return hashMap;
    }

    public Context getContext() {
        return this.mContext;
    }

    public CursorItem getFirstFromTable(SQLQuery.Select select) {
        return getFirstFromTable(getReadableDatabase(), select);
    }

    public CursorItem getFirstFromTable(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select) {
        List<CursorItem> table = getTable(sQLiteDatabase, select.setLimit(1));
        if (table.size() > 0) {
            return table.get(0);
        }
        return null;
    }

    public List<CursorItem> getTable(SQLQuery.Select select) {
        return getTable(getReadableDatabase(), select);
    }

    public List<CursorItem> getTable(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select) {
        ArrayList arrayList = new ArrayList();
        Cursor query = sQLiteDatabase.query(select.tableName, select.columns, select.where, select.whereArgs, select.groupBy, select.having, select.orderBy, select.limit);
        if (!query.moveToFirst()) {
            query.close();
        } else {
            if (select.loadListener != null) {
                select.loadListener.onOpen(this, query);
            }
            do {
                CursorItem cursorItem = new CursorItem();
                for (int i = 0; i < query.getColumnCount(); i++) {
                    cursorItem.put(query.getColumnName(i), query.getString(i));
                }
                if (select.loadListener != null) {
                    select.loadListener.onLoad(this, query, cursorItem);
                }
                arrayList.add(cursorItem);
            } while (query.moveToNext());
        }
        query.close();
        return arrayList;
    }

    public long insert(DatabaseObject databaseObject) {
        return insert(getWritableDatabase(), databaseObject, (Object) null);
    }

    public <T> long insert(android.database.sqlite.SQLiteDatabase sQLiteDatabase, DatabaseObject<T> databaseObject, T t) {
        databaseObject.onCreateObject(sQLiteDatabase, this, t);
        return insert(sQLiteDatabase, databaseObject.getWhere().tableName, (String) null, databaseObject.getValues());
    }

    public long insert(android.database.sqlite.SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        return sQLiteDatabase.insert(str, str2, contentValues);
    }

    public <T extends DatabaseObject> void insert(List<T> list) {
        insert(list, (ProgressUpdater) null);
    }

    public <T extends DatabaseObject> void insert(List<T> list, ProgressUpdater progressUpdater) {
        insert(getWritableDatabase(), list, progressUpdater, (Object) null);
    }

    public <T, V extends DatabaseObject<T>> void insert(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, ProgressUpdater progressUpdater, T t) {
        Iterator<String> it;
        Map<String, List<V>> map;
        android.database.sqlite.SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        ProgressUpdater progressUpdater2 = progressUpdater;
        Map<String, List<V>> explodePerTable = explodePerTable(list);
        sQLiteDatabase.beginTransaction();
        try {
            if (explodePerTable.size() > 0) {
                Iterator<String> it2 = explodePerTable.keySet().iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    ArrayList<String> arrayList = new ArrayList<>();
                    List list2 = explodePerTable.get(next);
                    StringBuilder sb = new StringBuilder();
                    if (list2 != null) {
                        Iterator it3 = list2.iterator();
                        int i = 0;
                        while (true) {
                            if (!it3.hasNext()) {
                                break;
                            }
                            ContentValues values = ((DatabaseObject) it3.next()).getValues();
                            if (arrayList.size() == 0) {
                                arrayList.addAll(values.keySet());
                            }
                            if (sb.length() == 0) {
                                sb.append("(");
                                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                    if (i2 > 0) {
                                        sb.append(",");
                                    }
                                    sb.append("?");
                                }
                                sb.append(")");
                            }
                            StringBuilder sb2 = new StringBuilder();
                            StringBuilder sb3 = new StringBuilder();
                            map = explodePerTable;
                            sb2.append(String.format("INSERT INTO `%s` (", new Object[]{next}));
                            Iterator it4 = arrayList.iterator();
                            while (it4.hasNext()) {
                                String str = (String) it4.next();
                                if (sb3.length() > 0) {
                                    sb3.append(",");
                                }
                                Iterator<String> it5 = it2;
                                sb3.append(String.format("`%s`", new Object[]{str}));
                                it4 = it4;
                                it2 = it5;
                            }
                            it = it2;
                            sb2.append(sb3);
                            sb2.append(") VALUES ");
                            sb2.append(sb);
                            sb2.append(";");
                            if (progressUpdater2 != null && !progressUpdater.onProgressState()) {
                                break;
                            }
                            SQLiteStatement compileStatement = sQLiteDatabase2.compileStatement(sb2.toString());
                            int i3 = 0;
                            for (String str2 : arrayList) {
                                i3++;
                                bindContentValue(compileStatement, i3, values.get(str2));
                            }
                            compileStatement.execute();
                            compileStatement.close();
                            if (progressUpdater2 != null) {
                                progressUpdater2.onProgressChange(list.size(), i);
                                i++;
                            }
                            List<V> list3 = list;
                            explodePerTable = map;
                            it2 = it;
                        }
                        List<V> list4 = list;
                        explodePerTable = map;
                        it2 = it;
                    }
                    map = explodePerTable;
                    it = it2;
                    List<V> list42 = list;
                    explodePerTable = map;
                    it2 = it;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (V onCreateObject : list) {
                onCreateObject.onCreateObject(sQLiteDatabase2, this, t);
            }
        } catch (Exception e) {
            e.printStackTrace();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public void publish(DatabaseObject databaseObject) {
        publish(getWritableDatabase(), databaseObject, (Object) null);
    }

    public <T> void publish(android.database.sqlite.SQLiteDatabase sQLiteDatabase, DatabaseObject<T> databaseObject, T t) {
        if (getFirstFromTable(sQLiteDatabase, databaseObject.getWhere()) != null) {
            update(sQLiteDatabase, databaseObject, t);
        } else {
            insert(sQLiteDatabase, databaseObject, t);
        }
    }

    public <T extends DatabaseObject> boolean publish(List<T> list) {
        return publish(list, (ProgressUpdater) null);
    }

    public <T extends DatabaseObject> boolean publish(List<T> list, ProgressUpdater progressUpdater) {
        return publish(getWritableDatabase(), list, progressUpdater, (Object) null);
    }

    public <T, V extends DatabaseObject<T>> boolean publish(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, ProgressUpdater progressUpdater, T t) {
        Map<String, List<V>> explodePerTable = explodePerTable(list);
        if (explodePerTable.size() > 0) {
            try {
                for (String str : explodePerTable.keySet()) {
                    List<DatabaseObject> list2 = explodePerTable.get(str);
                    if (list2 != null) {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int i = 0;
                        for (DatabaseObject databaseObject : list2) {
                            if (progressUpdater != null && !progressUpdater.onProgressState()) {
                                return false;
                            }
                            if (getFirstFromTable(databaseObject.getWhere()) == null) {
                                arrayList2.add(databaseObject);
                            } else {
                                arrayList.add(databaseObject);
                            }
                            if (progressUpdater != null) {
                                progressUpdater.onProgressChange(list2.size(), i);
                                i++;
                            }
                        }
                        insert(sQLiteDatabase, arrayList2, progressUpdater, t);
                        update(sQLiteDatabase, arrayList, progressUpdater, t);
                    }
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public void reconstruct(DatabaseObject databaseObject) throws ReconstructionFailedException {
        reconstruct(getReadableDatabase(), databaseObject);
    }

    public void reconstruct(android.database.sqlite.SQLiteDatabase sQLiteDatabase, DatabaseObject databaseObject) throws ReconstructionFailedException {
        CursorItem firstFromTable = getFirstFromTable(sQLiteDatabase, databaseObject.getWhere());
        if (firstFromTable == null) {
            SQLQuery.Select where = databaseObject.getWhere();
            StringBuilder sb = new StringBuilder();
            for (String str : where.whereArgs) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append("[] ");
                sb.append(str);
            }
            throw new ReconstructionFailedException("No data was returned from: query; tableName: " + where.tableName + "; where: " + where.where + "; whereArgs: " + sb.toString());
        }
        databaseObject.reconstruct(firstFromTable);
    }

    public void remove(DatabaseObject databaseObject) {
        remove(getWritableDatabase(), databaseObject, (Object) null);
    }

    public <T> void remove(android.database.sqlite.SQLiteDatabase sQLiteDatabase, DatabaseObject<T> databaseObject, T t) {
        databaseObject.onRemoveObject(sQLiteDatabase, this, t);
        remove(sQLiteDatabase, databaseObject.getWhere());
    }

    public int remove(SQLQuery.Select select) {
        return remove(getWritableDatabase(), select);
    }

    public int remove(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select) {
        return sQLiteDatabase.delete(select.tableName, select.where, select.whereArgs);
    }

    public <T extends DatabaseObject> void remove(List<T> list) {
        remove(list, (ProgressUpdater) null);
    }

    public <T extends DatabaseObject> void remove(List<T> list, ProgressUpdater progressUpdater) {
        remove(getWritableDatabase(), list, progressUpdater, (Object) null);
    }

    public <T, V extends DatabaseObject<T>> void remove(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, ProgressUpdater progressUpdater, T t) {
        sQLiteDatabase.beginTransaction();
        try {
            Iterator<V> it = list.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DatabaseObject databaseObject = (DatabaseObject) it.next();
                if (progressUpdater != null && !progressUpdater.onProgressState()) {
                    break;
                }
                SQLQuery.Select where = databaseObject.getWhere();
                sQLiteDatabase.delete(where.tableName, where.where, where.whereArgs);
                if (progressUpdater != null) {
                    progressUpdater.onProgressChange(list.size(), i);
                    i++;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (V onRemoveObject : list) {
                onRemoveObject.onRemoveObject(sQLiteDatabase, this, t);
            }
        } catch (Exception e) {
            e.printStackTrace();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public <V, T extends DatabaseObject<V>> void removeAsObject(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select, Class<T> cls, CastQueryListener<T> castQueryListener, V v) {
        List<T> castQuery = castQuery(sQLiteDatabase, select, cls, castQueryListener);
        remove(sQLiteDatabase, select);
        for (T onRemoveObject : castQuery) {
            onRemoveObject.onRemoveObject(sQLiteDatabase, this, v);
        }
    }

    public int update(DatabaseObject databaseObject) {
        return update(getWritableDatabase(), databaseObject, (Object) null);
    }

    public <T> int update(android.database.sqlite.SQLiteDatabase sQLiteDatabase, DatabaseObject<T> databaseObject, T t) {
        databaseObject.onUpdateObject(sQLiteDatabase, this, t);
        return update(sQLiteDatabase, databaseObject.getWhere(), databaseObject.getValues());
    }

    public int update(SQLQuery.Select select, ContentValues contentValues) {
        return update(getWritableDatabase(), select, contentValues);
    }

    public int update(android.database.sqlite.SQLiteDatabase sQLiteDatabase, SQLQuery.Select select, ContentValues contentValues) {
        return sQLiteDatabase.update(select.tableName, contentValues, select.where, select.whereArgs);
    }

    public <T extends DatabaseObject> void update(List<T> list) {
        update(list, (ProgressUpdater) null);
    }

    public <T extends DatabaseObject> void update(List<T> list, ProgressUpdater progressUpdater) {
        update(getWritableDatabase(), list, progressUpdater, (Object) null);
    }

    public <T, V extends DatabaseObject<T>> void update(android.database.sqlite.SQLiteDatabase sQLiteDatabase, List<V> list, ProgressUpdater progressUpdater, T t) {
        sQLiteDatabase.beginTransaction();
        try {
            Iterator<V> it = list.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DatabaseObject databaseObject = (DatabaseObject) it.next();
                if (progressUpdater != null && !progressUpdater.onProgressState()) {
                    break;
                }
                SQLQuery.Select where = databaseObject.getWhere();
                sQLiteDatabase.update(where.tableName, databaseObject.getValues(), where.where, where.whereArgs);
                if (progressUpdater != null) {
                    progressUpdater.onProgressChange(list.size(), i);
                    i++;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (V onUpdateObject : list) {
                onUpdateObject.onUpdateObject(sQLiteDatabase, this, t);
            }
        } catch (Exception e) {
            e.printStackTrace();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }
}
