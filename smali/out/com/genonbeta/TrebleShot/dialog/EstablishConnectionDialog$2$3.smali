.class Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;
.super Ljava/lang/Object;
.source "EstablishConnectionDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

.field final synthetic val$calculatedConnections:Ljava/util/List;

.field final synthetic val$connectionList:Ljava/util/List;

.field final synthetic val$reachedConnections:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 142
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$calculatedConnections:Ljava/util/List;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$reachedConnections:Ljava/util/List;

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$connectionList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

    if-nez v0, :cond_19

    .line 147
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$networkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$calculatedConnections:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_84

    .line 149
    :cond_19
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    if-nez v0, :cond_84

    .line 150
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$reachedConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_69

    .line 151
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110191

    .line 152
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11015b

    .line 153
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110031

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;)V

    .line 154
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110069

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;)V

    .line 164
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_84

    .line 174
    :cond_69
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->val$listener:Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$reachedConnections:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->val$connectionList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;->onDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2$3;->this$1:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->dismiss()V

    :cond_84
    :goto_84
    return-void
.end method
