.class public Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "ProfileEditorDialog.java"


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 9

    .line 22
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0067

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090143

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f090144

    .line 26
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0900de

    .line 27
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 28
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    .line 31
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 32
    invoke-virtual {p1, v5, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->loadProfilePictureInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 33
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 35
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;Lcom/genonbeta/TrebleShot/app/Activity;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;Lcom/genonbeta/TrebleShot/app/Activity;)V

    const v1, 0x7f110063

    invoke-virtual {p0, v1, v0}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;

    invoke-direct {v0, p0, v4, p1}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;Landroid/widget/EditText;Lcom/genonbeta/TrebleShot/app/Activity;)V

    const p1, 0x7f11006c

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110033

    .line 71
    invoke-virtual {p0, p1, v2}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method protected closeIfPossible()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_13

    .line 77
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_13

    :cond_10
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_13
    :goto_13
    return-void
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 2

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method
