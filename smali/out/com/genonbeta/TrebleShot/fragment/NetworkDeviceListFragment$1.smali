.class Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;
.super Ljava/lang/Object;
.source "NetworkDeviceListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultReturned(ZZ)V
    .registers 3

    .line 70
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;->access$102(Lcom/genonbeta/TrebleShot/fragment/NetworkDeviceListFragment;Z)Z

    return-void
.end method
