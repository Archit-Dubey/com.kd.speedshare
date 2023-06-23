.class public Lcom/genonbeta/android/framework/preference/DbSharablePreferences;
.super Lcom/genonbeta/android/database/SQLiteDatabase;
.source "DbSharablePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;,
        Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;,
        Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;,
        Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String;

.field public static final DATABASE_VERSION:I = 0x1

.field public static final FIELD_KEY:Ljava/lang/String; = "__key"

.field public static final FIELD_TYPE:Ljava/lang/String; = "__type"

.field public static final FIELD_VALUE:Ljava/lang/String; = "__value"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncReliant:Z

.field private mSyncedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListener:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->DATABASE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    .line 46
    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->DATABASE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/genonbeta/android/database/SQLiteDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncReliant:Z

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mChangeListener:Ljava/util/List;

    .line 40
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncedList:Ljava/util/Map;

    .line 47
    iput-object p2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mCategory:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncReliant:Z

    .line 50
    invoke-direct {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/util/Map;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncedList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$002(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncedList:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mChangeListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mUpdateListener:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method private initialize()V
    .registers 8

    .line 72
    new-instance v0, Lcom/genonbeta/android/database/SQLValues;

    invoke-direct {v0}, Lcom/genonbeta/android/database/SQLValues;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mCategory:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;Z)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v3, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v4, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v5, "__key"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 75
    invoke-virtual {v1, v3}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v3, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v4, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v5, "__type"

    invoke-direct {v3, v5, v4, v6}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 76
    invoke-virtual {v1, v3}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v3, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v4, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v5, "__value"

    invoke-direct {v3, v5, v4, v2}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 77
    invoke-virtual {v1, v3}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    .line 79
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/genonbeta/android/database/SQLQuery;->createTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues;)V

    .line 81
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncReliant:Z

    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->setSyncReliant(Z)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 4

    .line 147
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 151
    :cond_d
    :try_start_d
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mCategory:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_19

    const/4 p1, 0x1

    return p1

    :catch_19
    const/4 p1, 0x0

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 162
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$DbEditor;-><init>(Lcom/genonbeta/android/framework/preference/DbSharablePreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mCategory:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 88
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    .line 91
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getTypedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_31
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 141
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->valueCast(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 135
    const-class v0, Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->valueCast(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 123
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->valueCast(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .line 129
    const-class v0, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->valueCast(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 110
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->valueCast(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getSyncedList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncedList:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSyncReliant()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncReliant:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSyncReliant(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncReliant:Z

    if-eqz p1, :cond_7

    .line 182
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->sync()V

    :cond_7
    return-void
.end method

.method public setUpdateListener(Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mUpdateListener:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;

    return-object p0
.end method

.method public sync()V
    .registers 3

    .line 193
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mSyncedList:Ljava/util/Map;

    .line 194
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public valueCast(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->isSyncReliant()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 200
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->getSyncedList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 201
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->getSyncedList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 203
    :cond_19
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->mCategory:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_20
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 207
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->getTypedValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception v0

    .line 209
    const-class v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read and returning the default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; default: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; requested type: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; error msg: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-object p3
.end method
