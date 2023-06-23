.class Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$3;
.super Ljava/lang/Object;
.source "BarcodeConnectFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 4

    .line 130
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->access$100(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 131
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;->access$100(Lcom/genonbeta/TrebleShot/fragment/BarcodeConnectFragment;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z

    :cond_11
    return-void
.end method
