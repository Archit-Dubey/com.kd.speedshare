.class public Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;
.super Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.source "TextStreamListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;,
        Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/object/TextStreamObject;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# instance fields
.field private mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;-><init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700fa

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110231

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;
    .registers 5

    .line 121
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;)V

    .line 131
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setFilteringSupported(Z)V

    const/16 p1, 0x6e

    .line 58
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setDefaultOrderingCriteria(I)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setDefaultSortingCriteria(I)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setDefaultGroupingCriteria(I)V

    .line 61
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setDefaultSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V

    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 46
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 6

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TextStreamListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "genonbeta.intent.action.EDIT_TEXT"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clipboardId"

    iget-wide v2, p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    const/4 p1, 0x1

    return p1

    :catch_34
    const/4 p1, 0x0

    return p1
.end method

.method public onGridSpanSize(II)I
    .registers 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    goto :goto_9

    .line 115
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onGridSpanSize(II)I

    move-result p2

    :goto_9
    return p2
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

    .line 106
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1101aa

    .line 107
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 7

    .line 67
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090148

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;)V

    invoke-virtual {v1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090147

    .line 82
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .registers 3

    .line 172
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onPause()V

    .line 173
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 163
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->mStatusReceiver:Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$StatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->refreshList()V

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

    const v0, 0x7f110223

    .line 99
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110222

    .line 100
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 88
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700ce

    .line 90
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101cc

    .line 91
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, p2, p2, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    return-void
.end method
