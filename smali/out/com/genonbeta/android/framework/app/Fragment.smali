.class public Lcom/genonbeta/android/framework/app/Fragment;
.super Landroidx/fragment/app/Fragment;
.source "Fragment.java"

# interfaces
.implements Lcom/genonbeta/android/framework/app/FragmentImpl;
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;


# instance fields
.field private mIsMenuShown:Z

.field private mSnackbarContainer:Landroid/view/View;

.field private mSnackbarLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/genonbeta/android/framework/app/Fragment;->mSnackbarLength:I

    return-void
.end method


# virtual methods
.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/Fragment;->mSnackbarContainer:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_15

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/genonbeta/android/framework/app/Fragment;->mSnackbarLength:I

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method public isMenuShown()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/app/Fragment;->mIsMenuShown:Z

    return v0
.end method

.method public setMenuVisibility(Z)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 38
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/app/Fragment;->mIsMenuShown:Z

    return-void
.end method

.method public setSnackbarContainer(Landroid/view/View;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/Fragment;->mSnackbarContainer:Landroid/view/View;

    return-void
.end method

.method public setSnackbarLength(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/genonbeta/android/framework/app/Fragment;->mSnackbarLength:I

    return-void
.end method
