.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_41

    .line 173
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100c7

    .line 174
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110069

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 176
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    instance-of v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    if-eqz v1, :cond_3e

    .line 179
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$4;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    check-cast v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    :cond_3e
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_41
    return-void
.end method
