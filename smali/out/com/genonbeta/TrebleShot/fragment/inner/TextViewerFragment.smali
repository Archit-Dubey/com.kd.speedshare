.class public Lcom/genonbeta/TrebleShot/fragment/inner/TextViewerFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "TextViewerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# instance fields
.field private mMainText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700ce

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f11021b

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 34
    invoke-super {p0, p1}, Lcom/genonbeta/android/framework/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/TextViewerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 48
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0016

    .line 49
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c006c

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 55
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/framework/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090149

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/TextViewerFragment;->mMainText:Landroid/widget/TextView;

    return-void
.end method
