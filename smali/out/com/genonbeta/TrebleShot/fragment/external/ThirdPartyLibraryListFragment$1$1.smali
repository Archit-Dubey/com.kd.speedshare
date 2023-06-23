.class Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;
.super Ljava/lang/Object;
.source "ThirdPartyLibraryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->onQuickActions(Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

.field final synthetic val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 48
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$LicencesAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->val$clazz:Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;

    .line 50
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0d001b

    invoke-virtual {p1, v3, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 53
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v2, 0x7f090196

    .line 54
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleUrl:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    .line 55
    :goto_49
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 57
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v2, 0x7f090194

    .line 58
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v2, v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->licenceUrl:Ljava/lang/String;

    if-eqz v2, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    .line 59
    :goto_5d
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 61
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;

    invoke-direct {p1, p0, v0}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 81
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
