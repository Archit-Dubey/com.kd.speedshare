.class public Lcom/genonbeta/TrebleShot/object/TransferGroup;
.super Ljava/lang/Object;
.source "TransferGroup.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;
.implements Lcom/genonbeta/android/framework/object/Selectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;,
        Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/database/DatabaseObject<",
        "Lcom/genonbeta/TrebleShot/object/NetworkDevice;",
        ">;",
        "Lcom/genonbeta/android/framework/object/Selectable;"
    }
.end annotation


# instance fields
.field public dateCreated:J

.field public groupId:J

.field public isServedOnWeb:Z

.field private mIsSelected:Z

.field public savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->mIsSelected:Z

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->mIsSelected:Z

    .line 37
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->mIsSelected:Z

    .line 42
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/object/TransferGroup;->reconstruct(Lcom/genonbeta/android/database/CursorItem;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 48
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    const-string v2, "savePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->dateCreated:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dateCreated"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isSharedOnWeb"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 6

    .line 88
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transferGroup"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v3, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 89
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "id=?"

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    return-object v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->mIsSelected:Z

    return v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->dateCreated:J

    return-void
.end method

.method public bridge synthetic onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 22
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup;->onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 14

    .line 114
    new-instance p3, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "divisionTransfer"

    invoke-direct {p3, v2, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "groupId"

    aput-object v3, v2, v0

    const-string v3, "%s = ?"

    .line 115
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3, v2, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    .line 114
    invoke-virtual {p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I

    .line 117
    new-instance p3, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "transferAssignee"

    invoke-direct {p3, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/String;

    iget-wide v3, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 118
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "groupId=?"

    invoke-virtual {p3, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    .line 117
    invoke-virtual {p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I

    .line 120
    new-instance p3, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "transfer"

    invoke-direct {p3, v4, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 121
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p3, v3, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v6

    const-class v7, Lcom/genonbeta/TrebleShot/object/TransferObject;

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p1

    move-object v9, p0

    .line 120
    invoke-virtual/range {v4 .. v9}, Lcom/genonbeta/android/database/SQLiteDatabase;->removeAsObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 22
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 22
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup;->onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 4

    const-string v0, "id"

    .line 54
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string v0, "savePath"

    .line 55
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    const-string v0, "dateCreated"

    .line 56
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->dateCreated:J

    const-string v0, "isSharedOnWeb"

    .line 57
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->mIsSelected:Z

    const/4 p1, 0x1

    return p1
.end method
