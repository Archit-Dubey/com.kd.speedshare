.class public Lcom/genonbeta/TrebleShot/fragment/inner/ConcurrentTaskFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "ConcurrentTaskFragment.java"

# interfaces
.implements Lcom/genonbeta/android/framework/app/FragmentImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
