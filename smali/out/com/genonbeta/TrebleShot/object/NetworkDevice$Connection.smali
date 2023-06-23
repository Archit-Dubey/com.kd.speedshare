.class public Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
.super Ljava/lang/Object;
.source "NetworkDevice.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/object/NetworkDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
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
.field public adapterName:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public lastCheckedDate:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 3

    .line 158
    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->reconstruct(Lcom/genonbeta/android/database/CursorItem;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    .line 147
    iput-wide p4, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->lastCheckedDate:J

    return-void
.end method


# virtual methods
.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    const-string v2, "adapterName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const-string v2, "ipAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->lastCheckedDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastCheckedDate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 6

    .line 174
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "deviceConnection"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_21

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "deviceId=? AND adapterName=?"

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    goto :goto_2b

    :cond_21
    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "ipAddress=?"

    .line 179
    invoke-virtual {v0, v1, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 131
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 131
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 131
    check-cast p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 4

    const-string v0, "adapterName"

    .line 198
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    const-string v0, "ipAddress"

    .line 199
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    const-string v0, "deviceId"

    .line 200
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    const-string v0, "lastCheckedDate"

    .line 201
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->lastCheckedDate:J

    return-void
.end method
