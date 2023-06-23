.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 6

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3$1;-><init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$3;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
