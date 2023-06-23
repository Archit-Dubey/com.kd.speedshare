.class Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;
.super Ljava/lang/Object;
.source "ManualIpAddressConnectionDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 4

    .line 26
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->access$000(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->access$000(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 27
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->access$000(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 29
    :cond_1d
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 30
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z

    :cond_2e
    return-void
.end method
