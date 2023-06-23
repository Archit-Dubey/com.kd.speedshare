.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;->onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;

.field final synthetic val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field final synthetic val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field final synthetic val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 5

    .line 154
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->this$2:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->this$2:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$registerListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    if-eqz v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->this$2:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$registerListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->val$database:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-interface {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;->onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    :cond_17
    return-void
.end method
