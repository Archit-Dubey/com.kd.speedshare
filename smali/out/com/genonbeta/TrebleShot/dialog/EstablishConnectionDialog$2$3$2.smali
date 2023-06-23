.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 159
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;->this$2:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

    invoke-direct {p1, p2, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    .line 160
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
