.class public Lcom/genonbeta/TrebleShot/dialog/NavigationViewBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "NavigationViewBottomSheetDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V
    .registers 9

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0065

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09017a

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/navigation/NavigationView;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 28
    invoke-virtual {v1, p3}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 29
    invoke-virtual {v1, p4}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/dialog/NavigationViewBottomSheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
