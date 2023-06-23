.class final Lcom/genonbeta/TrebleShot/util/TransferUtils$2;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils;->getFirstAssignee(Lcom/genonbeta/TrebleShot/database/AccessDatabase;J)Lcom/genonbeta/TrebleShot/object/ShowingAssignee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener<",
        "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectReconstructed(Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/android/database/CursorItem;Lcom/genonbeta/TrebleShot/object/ShowingAssignee;)V
    .registers 5

    .line 103
    new-instance p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v0, p3, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    iput-object p2, p3, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    .line 104
    new-instance p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {p2, p3}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    iput-object p2, p3, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    .line 107
    :try_start_10
    iget-object p2, p3, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 108
    iget-object p2, p3, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-virtual {p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method public bridge synthetic onObjectReconstructed(Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/android/database/CursorItem;Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 4

    .line 99
    check-cast p3, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/util/TransferUtils$2;->onObjectReconstructed(Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/android/database/CursorItem;Lcom/genonbeta/TrebleShot/object/ShowingAssignee;)V

    return-void
.end method
