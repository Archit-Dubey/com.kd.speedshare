.class Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;
.super Ljava/lang/Object;
.source "ThirdPartyLibraryListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions<",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
    .registers 4

    .line 43
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onQuickActions(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V

    return-void
.end method
