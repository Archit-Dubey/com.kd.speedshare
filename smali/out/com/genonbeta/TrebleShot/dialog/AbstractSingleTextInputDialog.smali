.class public abstract Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;
.super Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;
.source "AbstractSingleTextInputDialog.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->mView:Landroid/view/ViewGroup;

    const v0, 0x7f090124

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->mEditText:Landroid/widget/EditText;

    .line 27
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110176

    .line 28
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110033

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 31
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public getContainerView()Landroid/view/ViewGroup;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method
