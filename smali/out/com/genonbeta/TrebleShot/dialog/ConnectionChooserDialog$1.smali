.class Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;
.super Ljava/lang/Object;
.source "ConnectionChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

.field final synthetic val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;->val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 68
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->getConnections()Ljava/util/List;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;->val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-interface {v0, p2, p1}, Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;->onDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/util/List;)V

    return-void
.end method
