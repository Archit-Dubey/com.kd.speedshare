.class public Lcom/genonbeta/TrebleShot/object/NetworkDevice;
.super Ljava/lang/Object;
.source "NetworkDevice.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    }
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
.field public brand:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public isLocalAddress:Z

.field public isRestricted:Z

.field public isTrusted:Z

.field public lastUsageTime:J

.field public model:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public tmpSecureKey:I

.field public versionName:Ljava/lang/String;

.field public versionNumber:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    .line 25
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 26
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    .line 25
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 26
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->reconstruct(Lcom/genonbeta/android/database/CursorItem;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    .line 25
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    .line 26
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    .line 34
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generatePictureId()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "picture_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->brand:Ljava/lang/String;

    const-string v2, "brand"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    const-string v2, "buildName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "buildNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastUsedTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isRestricted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isTrusted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isLocalAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    iget v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->tmpSecureKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tmpSecureKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 5

    .line 50
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "devices"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "deviceId=?"

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    return-object v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 13

    .line 104
    invoke-virtual {p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->generatePictureId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 106
    new-instance p3, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "deviceConnection"

    invoke-direct {p3, v2, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "deviceId=?"

    .line 107
    invoke-virtual {p3, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    .line 106
    invoke-virtual {p2, p1, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I

    .line 109
    new-instance p3, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "transferAssignee"

    invoke-direct {p3, v4, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    aput-object v5, v2, v0

    .line 110
    invoke-virtual {p3, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    const-class v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p2, p1, p3, v2, v3}, Lcom/genonbeta/android/database/SQLiteDatabase;->castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object p3

    .line 113
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_43
    :goto_43
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    .line 114
    invoke-virtual {p2, v2}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 117
    :try_start_52
    new-instance v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v5, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    invoke-direct {v3, v5, v6}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 118
    invoke-virtual {p2, p1, v3}, Lcom/genonbeta/android/database/SQLiteDatabase;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 120
    new-instance v2, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v5, v0, [Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "groupId=?"

    new-array v6, v1, [Ljava/lang/String;

    iget-wide v7, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 121
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v2, v5, v6}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    const-class v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    .line 120
    invoke-virtual {p2, v2, v5}, Lcom/genonbeta/android/database/SQLiteDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_43

    .line 124
    invoke-virtual {p2, v3}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_82} :catch_83

    goto :goto_43

    :catch_83
    nop

    goto :goto_43

    :cond_85
    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 5

    const-string v0, "deviceId"

    .line 76
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v0, "user"

    .line 77
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const-string v0, "brand"

    .line 78
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->brand:Ljava/lang/String;

    const-string v0, "model"

    .line 79
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    const-string v0, "buildName"

    .line 80
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    const-string v0, "buildNumber"

    .line 81
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const-string v0, "lastUsedTime"

    .line 82
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    const-string v0, "isTrusted"

    .line 83
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isTrusted:Z

    const-string v0, "isRestricted"

    .line 84
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    const-string v0, "isLocalAddress"

    .line 85
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_5d

    const/4 v1, 0x1

    :cond_5d
    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    const-string v0, "tmpSecureKey"

    .line 86
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->tmpSecureKey:I

    return-void
.end method
