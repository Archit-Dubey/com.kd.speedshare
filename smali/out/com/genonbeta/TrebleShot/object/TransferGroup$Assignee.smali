.class public Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;
.super Ljava/lang/Object;
.source "TransferGroup.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/object/TransferGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Assignee"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/database/DatabaseObject<",
        "Lcom/genonbeta/TrebleShot/object/NetworkDevice;",
        ">;"
    }
.end annotation


# instance fields
.field public connectionAdapter:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public groupId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    .line 165
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(JLjava/lang/String;)V

    .line 176
    iput-object p4, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 5

    .line 170
    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object p1, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 6

    .line 182
    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object p1, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iget-object p2, p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    const-string v2, "connectionAdapter"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isClone"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 6

    .line 188
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transferAssignee"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-wide v3, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    .line 189
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "deviceId=? AND groupId=?"

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    return-object v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 151
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 12

    .line 228
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createTransferSelection(JLjava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    .line 231
    :try_start_8
    new-instance v7, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    invoke-direct {v7, v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 233
    invoke-virtual {p2, p1, v7}, Lcom/genonbeta/android/database/SQLiteDatabase;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 234
    const-class v5, Lcom/genonbeta/TrebleShot/object/TransferObject;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/genonbeta/android/database/SQLiteDatabase;->removeAsObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_1f

    .line 236
    :catch_1c
    invoke-virtual {p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I

    :goto_1f
    return-void
.end method

.method public bridge synthetic onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 151
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 151
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 4

    const-string v0, "deviceId"

    .line 208
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    const-string v0, "groupId"

    .line 209
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    const-string v0, "connectionAdapter"

    .line 210
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    return-void
.end method
