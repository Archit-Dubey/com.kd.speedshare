.class public abstract Lcom/genonbeta/android/database/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;,
        Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLiteDatabase;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindContentValue(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V
    .registers 6

    if-nez p3, :cond_6

    .line 34
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4b

    .line 35
    :cond_6
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 36
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4b

    .line 37
    :cond_14
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_23

    .line 38
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4b

    .line 39
    :cond_23
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_31

    .line 40
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_4b

    .line 41
    :cond_31
    instance-of v0, p3, [B

    if-eqz v0, :cond_3d

    .line 42
    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_4b

    .line 44
    :cond_3d
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_44

    check-cast p3, Ljava/lang/String;

    goto :goto_48

    .line 46
    :cond_44
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 44
    :goto_48
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4b
    return-void
.end method

.method public castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/SQLQuery$Select;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->getTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Ljava/util/List;

    move-result-object p1

    .line 65
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/android/database/CursorItem;

    .line 66
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/database/DatabaseObject;

    .line 68
    invoke-interface {v1, p2}, Lcom/genonbeta/android/database/DatabaseObject;->reconstruct(Lcom/genonbeta/android/database/CursorItem;)V

    if-eqz p4, :cond_27

    .line 71
    invoke-interface {p4, p0, p2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;->onObjectReconstructed(Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/android/database/CursorItem;Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 73
    :cond_27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2a} :catch_30
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_2a} :catch_2b

    goto :goto_d

    :catch_2b
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_34

    :catch_30
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_34
    :goto_34
    return-object v0
.end method

.method public castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Lcom/genonbeta/android/database/SQLQuery$Select;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Lcom/genonbeta/android/database/SQLQuery$Select;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public explodePerTable(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TV;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/database/DatabaseObject;

    .line 89
    invoke-interface {v1}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    .line 90
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2b

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2b
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2f
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLiteDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstFromTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;
    .registers 4

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p2, v0}, Lcom/genonbeta/android/database/SQLQuery$Select;->setLimit(I)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->getTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Ljava/util/List;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_17

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/database/CursorItem;

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method public getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;
    .registers 3

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/android/database/SQLiteDatabase;->getFirstFromTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object p1

    return-object p1
.end method

.method public getTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/SQLQuery$Select;",
            ")",
            "Ljava/util/List<",
            "Lcom/genonbeta/android/database/CursorItem;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v2, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    iget-object v3, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->columns:[Ljava/lang/String;

    iget-object v4, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    iget-object v5, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    iget-object v6, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->groupBy:Ljava/lang/String;

    iget-object v7, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->having:Ljava/lang/String;

    iget-object v8, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->orderBy:Ljava/lang/String;

    iget-object v9, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->limit:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 138
    iget-object v1, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->loadListener:Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;

    if-eqz v1, :cond_29

    .line 139
    iget-object v1, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->loadListener:Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;

    invoke-interface {v1, p0, p1}, Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;->onOpen(Lcom/genonbeta/android/database/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 142
    :cond_29
    new-instance v1, Lcom/genonbeta/android/database/CursorItem;

    invoke-direct {v1}, Lcom/genonbeta/android/database/CursorItem;-><init>()V

    const/4 v2, 0x0

    .line 144
    :goto_2f
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 145
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/genonbeta/android/database/CursorItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/genonbeta/android/database/CursorItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 147
    :cond_43
    iget-object v2, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->loadListener:Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;

    if-eqz v2, :cond_4c

    .line 148
    iget-object v2, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->loadListener:Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;

    invoke-interface {v2, p0, p1, v1}, Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;->onLoad(Lcom/genonbeta/android/database/SQLiteDatabase;Landroid/database/Cursor;Lcom/genonbeta/android/database/CursorItem;)V

    .line 150
    :cond_4c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_29

    .line 154
    :cond_55
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/database/SQLQuery$Select;",
            ")",
            "Ljava/util/List<",
            "Lcom/genonbeta/android/database/CursorItem;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/android/database/SQLiteDatabase;->getTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;TT;)J"
        }
    .end annotation

    .line 166
    invoke-interface {p2, p1, p0, p3}, Lcom/genonbeta/android/database/DatabaseObject;->onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    .line 167
    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    iget-object p3, p3, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getValues()Landroid/content/ContentValues;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    .line 172
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insert(Lcom/genonbeta/android/database/DatabaseObject;)J
    .registers 4

    .line 161
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p2

    .line 187
    invoke-virtual {v1, v3}, Lcom/genonbeta/android/database/SQLiteDatabase;->explodePerTable(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 193
    :try_start_f
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_134

    .line 194
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_134

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_128

    .line 201
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_128

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/genonbeta/android/database/DatabaseObject;

    .line 202
    invoke-interface {v12}, Lcom/genonbeta/android/database/DatabaseObject;->getValues()Landroid/content/ContentValues;

    move-result-object v12

    .line 206
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5d

    .line 207
    invoke-virtual {v12}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_5d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_61} :catch_152
    .catchall {:try_start_f .. :try_end_61} :catchall_150

    const-string v14, ","

    if-nez v13, :cond_83

    :try_start_65
    const-string v13, "("

    .line 210
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    .line 212
    :goto_6b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_7e

    if-lez v13, :cond_76

    .line 214
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    const-string v15, "?"

    .line 216
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_6b

    :cond_7e
    const-string v13, ")"

    .line 219
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_83
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO `%s` ("

    const/4 v3, 0x1

    move-object/from16 v17, v4

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v4, v16

    .line 226
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 229
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_b8

    .line 230
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b8
    move-object/from16 v18, v4

    const-string v4, "`%s`"

    move-object/from16 v19, v5

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v5, v16

    .line 232
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_a3

    :cond_d0
    move-object/from16 v19, v5

    const/16 v16, 0x0

    .line 235
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ") VALUES "

    .line 236
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    .line 238
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_ec

    .line 240
    invoke-interface/range {p3 .. p3}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressState()Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 241
    :cond_ec
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 244
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :goto_f9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    add-int/2addr v10, v3

    .line 245
    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v4, v10, v13}, Lcom/genonbeta/android/database/SQLiteDatabase;->bindContentValue(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    goto :goto_f9

    .line 248
    :cond_10e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 249
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    if-eqz v0, :cond_120

    .line 254
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v11, 0x1

    invoke-interface {v0, v3, v11}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressChange(II)V

    move v11, v4

    :cond_120
    move-object/from16 v3, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    goto/16 :goto_40

    :cond_128
    move-object/from16 v17, v4

    move-object/from16 v19, v5

    :cond_12c
    move-object/from16 v3, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    goto/16 :goto_1d

    .line 260
    :cond_134
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_137} :catch_152
    .catchall {:try_start_65 .. :try_end_137} :catchall_150

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 268
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_159

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/database/DatabaseObject;

    move-object/from16 v4, p4

    .line 269
    invoke-interface {v3, v2, v1, v4}, Lcom/genonbeta/android/database/DatabaseObject;->onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_13e

    :catchall_150
    move-exception v0

    goto :goto_15a

    :catch_152
    move-exception v0

    .line 263
    :try_start_153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_150

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_159
    return-void

    :goto_15a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 269
    goto :goto_15f

    :goto_15e
    throw v0

    :goto_15f
    goto :goto_15e
.end method

.method public insert(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V

    return-void
.end method

.method public insert(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            ")V"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    return-void
.end method

.method public publish(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 280
    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getFirstFromTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)I

    goto :goto_11

    .line 283
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)J

    :goto_11
    return-void
.end method

.method public publish(Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 4

    .line 275
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->publish(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)V

    return-void
.end method

.method public publish(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)Z"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->explodePerTable(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    .line 300
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_76

    .line 302
    :try_start_b
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_13

    .line 306
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genonbeta/android/database/DatabaseObject;

    if-eqz p3, :cond_4b

    .line 311
    invoke-interface {p3}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressState()Z

    move-result v8

    if-nez v8, :cond_4b

    return v1

    .line 314
    :cond_4b
    invoke-interface {v7}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/genonbeta/android/database/SQLiteDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object v8

    if-nez v8, :cond_59

    .line 315
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 317
    :cond_59
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5c
    if-eqz p3, :cond_36

    .line 320
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    invoke-interface {p3, v7, v6}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressChange(II)V

    move v6, v8

    goto :goto_36

    .line 323
    :cond_69
    invoke-virtual {p0, p1, v4, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6f} :catch_72

    goto :goto_13

    :cond_70
    const/4 p1, 0x1

    return p1

    :catch_72
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_76
    return v1
.end method

.method public publish(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->publish(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)Z

    move-result p1

    return p1
.end method

.method public publish(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            ")Z"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->publish(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reconstruct(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/android/database/exception/ReconstructionFailedException;
        }
    .end annotation

    .line 344
    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getFirstFromTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object p1

    if-nez p1, :cond_60

    .line 347
    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    iget-object v0, p1, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 352
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_26

    const-string v4, ", "

    .line 353
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const-string v4, "[] "

    .line 355
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 359
    :cond_31
    new-instance v0, Lcom/genonbeta/android/database/exception/ReconstructionFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data was returned from: query; tableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; where: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; whereArgs: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/genonbeta/android/database/exception/ReconstructionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_60
    invoke-interface {p2, p1}, Lcom/genonbeta/android/database/DatabaseObject;->reconstruct(Lcom/genonbeta/android/database/CursorItem;)V

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/android/database/exception/ReconstructionFailedException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/android/database/SQLiteDatabase;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method

.method public remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I
    .registers 5

    .line 386
    iget-object v0, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    iget-object v1, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    iget-object p2, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I
    .registers 3

    .line 381
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I

    move-result p1

    return p1
.end method

.method public remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 375
    invoke-interface {p2, p1, p0, p3}, Lcom/genonbeta/android/database/DatabaseObject;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    .line 376
    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I

    return-void
.end method

.method public remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)V"
        }
    .end annotation

    .line 404
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 407
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/android/database/DatabaseObject;

    if-eqz p3, :cond_1d

    .line 408
    invoke-interface {p3}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressState()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_37

    .line 412
    :cond_1d
    invoke-interface {v2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    .line 413
    iget-object v3, v2, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    iget-object v4, v2, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    iget-object v2, v2, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_8

    .line 416
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p3, v2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressChange(II)V

    move v1, v3

    goto :goto_8

    .line 419
    :cond_37
    :goto_37
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_53
    .catchall {:try_start_3 .. :try_end_3a} :catchall_51

    .line 424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/genonbeta/android/database/DatabaseObject;

    .line 428
    invoke-interface {p3, p1, p0, p4}, Lcom/genonbeta/android/database/DatabaseObject;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_41

    :catchall_51
    move-exception p2

    goto :goto_5b

    :catch_53
    move-exception p2

    .line 422
    :try_start_54
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_51

    .line 424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5a
    return-void

    :goto_5b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 428
    goto :goto_60

    :goto_5f
    throw p2

    :goto_60
    goto :goto_5f
.end method

.method public remove(Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 4

    .line 370
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V

    return-void
.end method

.method public remove(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            ")V"
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    return-void
.end method

.method public removeAsObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TV;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/SQLQuery$Select;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener<",
            "TT;>;TV;)V"
        }
    .end annotation

    .line 438
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object p3

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I

    .line 442
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/genonbeta/android/database/DatabaseObject;

    .line 443
    invoke-interface {p3, p1, p0, p5}, Lcom/genonbeta/android/database/DatabaseObject;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 453
    invoke-interface {p2, p1, p0, p3}, Lcom/genonbeta/android/database/DatabaseObject;->onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    .line 454
    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    invoke-interface {p2}, Lcom/genonbeta/android/database/DatabaseObject;->getValues()Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I
    .registers 6

    .line 464
    iget-object v0, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    iget-object v1, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    iget-object p2, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public update(Lcom/genonbeta/android/database/DatabaseObject;)I
    .registers 4

    .line 448
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public update(Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I
    .registers 4

    .line 459
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I

    move-result p1

    return p1
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)V"
        }
    .end annotation

    .line 482
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 485
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/android/database/DatabaseObject;

    if-eqz p3, :cond_1d

    .line 486
    invoke-interface {p3}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressState()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_3b

    .line 490
    :cond_1d
    invoke-interface {v2}, Lcom/genonbeta/android/database/DatabaseObject;->getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v3

    .line 491
    iget-object v4, v3, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    invoke-interface {v2}, Lcom/genonbeta/android/database/DatabaseObject;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    iget-object v5, v3, Lcom/genonbeta/android/database/SQLQuery$Select;->where:Ljava/lang/String;

    iget-object v3, v3, Lcom/genonbeta/android/database/SQLQuery$Select;->whereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_8

    .line 494
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p3, v2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;->onProgressChange(II)V

    move v1, v3

    goto :goto_8

    .line 497
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_57
    .catchall {:try_start_3 .. :try_end_3e} :catchall_55

    .line 502
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/genonbeta/android/database/DatabaseObject;

    .line 506
    invoke-interface {p3, p1, p0, p4}, Lcom/genonbeta/android/database/DatabaseObject;->onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_45

    :catchall_55
    move-exception p2

    goto :goto_5f

    :catch_57
    move-exception p2

    .line 500
    :try_start_58
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    .line 502
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5e
    return-void

    :goto_5f
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 506
    goto :goto_64

    :goto_63
    throw p2

    :goto_64
    goto :goto_63
.end method

.method public update(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V

    return-void
.end method

.method public update(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            ")V"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    return-void
.end method
