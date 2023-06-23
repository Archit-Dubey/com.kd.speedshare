.class public Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;
.super Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.source "TransferGroupListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mFilter:Landroid/content/IntentFilter;

    .line 53
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700fc

    return v0
.end method

.method public getSelect()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f11023b

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 131
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getSelect()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    if-nez p1, :cond_24

    .line 137
    new-instance p1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transferGroup"

    invoke-direct {p1, v1, v0}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    :cond_24
    return-void
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;
    .registers 5

    .line 175
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$4;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;)V

    .line 196
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$5;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$5;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    .line 204
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getSelect()Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$5;->setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setFilteringSupported(Z)V

    const/16 v0, 0x6e

    .line 78
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setDefaultOrderingCriteria(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setDefaultSortingCriteria(I)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setDefaultGroupingCriteria(I)V

    .line 81
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setDefaultSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setUseDefaultPaddingDecoration(Z)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setUseDefaultPaddingDecorationSpaceForEdges(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06011e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setDefaultPaddingDecorationSize(F)V

    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 47
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 5

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;

    invoke-virtual {v1, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter$PreloadedGroup;->groupId:J

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startInstance(Landroid/content/Context;J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    const/4 p1, 0x1

    return p1

    :catch_17
    const/4 p1, 0x0

    return p1
.end method

.method public onGroupingOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f1101ac

    .line 168
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101aa

    .line 169
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 6

    .line 90
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f0900f3

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onPause()V

    .line 155
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 144
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_RUNNING_LIST_CHANGE"

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onSortingOptions(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110222

    .line 161
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110224

    .line 162
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 99
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0700b1

    .line 101
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setEmptyImage(I)V

    const p2, 0x7f1101cd

    .line 102
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901c2

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09019f

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelect(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->mSelect:Lcom/genonbeta/android/database/SQLQuery$Select;

    return-object p0
.end method
