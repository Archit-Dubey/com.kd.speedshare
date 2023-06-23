.class final Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showUnknownError(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 92
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110107

    .line 93
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110069

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$2;->val$retryButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2a
    return-void
.end method
