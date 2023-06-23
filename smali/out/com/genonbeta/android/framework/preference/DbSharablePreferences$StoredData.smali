.class public Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;
.super Ljava/lang/Object;
.source "DbSharablePreferences.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/preference/DbSharablePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoredData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/database/DatabaseObject<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mType:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mCategory:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 253
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->FLOAT:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 258
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->INTEGER:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 263
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sget-object p4, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->LONG:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;)V
    .registers 5

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput-object p4, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mType:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    if-eqz p3, :cond_d

    .line 243
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 268
    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->STRING:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 248
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->BOOLEAN:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mType:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    return-object v0
.end method

.method public getTypedValue()Ljava/lang/Object;
    .registers 3

    .line 284
    :try_start_0
    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$1;->$SwitchMap$com$genonbeta$android$framework$preference$DbSharablePreferences$Type:[I

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mType:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    goto :goto_37

    .line 292
    :cond_17
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 290
    :cond_1e
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 288
    :cond_25
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 286
    :cond_2c
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_37
    iget-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mKey:Ljava/lang/String;

    const-string v2, "__key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mType:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 5

    .line 304
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    iget-object v1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mCategory:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "__key=?"

    invoke-virtual {v0, v2, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    return-object v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 3

    const-string v0, "__key"

    .line 322
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mKey:Ljava/lang/String;

    const-string v0, "__value"

    .line 323
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mValue:Ljava/lang/String;

    const-string v0, "__type"

    .line 324
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->valueOf(Ljava/lang/String;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$StoredData;->mType:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    return-void
.end method
