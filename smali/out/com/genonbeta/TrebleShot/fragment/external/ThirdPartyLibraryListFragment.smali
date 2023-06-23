.class public Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;
.super Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;
.source "ThirdPartyLibraryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;,
        Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment<",
        "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        "Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/DynamicRecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;
    .registers 4

    .line 38
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;)V

    .line 87
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;

    move-result-object v0

    return-object v0
.end method
