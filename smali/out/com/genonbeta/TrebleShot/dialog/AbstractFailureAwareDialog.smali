.class public abstract Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "AbstractFailureAwareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;)Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->mClickListener:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;

    return-object p0
.end method


# virtual methods
.method public setOnProceedClickListener(ILcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;)V
    .registers 4

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->setOnProceedClickListener(Ljava/lang/String;Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;)V

    return-void
.end method

.method public setOnProceedClickListener(Ljava/lang/String;Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 26
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->mClickListener:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;

    return-void
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 4

    .line 37
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->mClickListener:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;

    if-eqz v1, :cond_15

    const/4 v1, -0x1

    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    return-object v0
.end method
