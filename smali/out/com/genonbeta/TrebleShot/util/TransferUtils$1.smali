.class final Lcom/genonbeta/TrebleShot/util/TransferUtils$1;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils;->changeConnection(Landroidx/fragment/app/FragmentActivity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field final synthetic val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field final synthetic val$listener:Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;)V
    .registers 5

    .line 53
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$listener:Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p2, v0, v1, p1}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 59
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 61
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;->val$listener:Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;

    if-eqz v0, :cond_15

    .line 62
    invoke-interface {v0, p1, p2}, Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;->onConnectionUpdated(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    :cond_15
    return-void
.end method
