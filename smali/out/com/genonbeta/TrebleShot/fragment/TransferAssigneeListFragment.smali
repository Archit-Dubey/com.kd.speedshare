.class public Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.source "TransferAssigneeListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment<",
        "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;"
    }
.end annotation


# static fields
.field public static final ARG_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final ARG_USE_HORIZONTAL_VIEW:Ljava/lang/String; = "useHorizontalView"


# instance fields
.field private mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->updateTransferGroup()V

    return-void
.end method

.method private updateTransferGroup()V
    .registers 3

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 235
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getEmptyActionButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-boolean v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz v1, :cond_1b

    const v1, 0x7f11004f

    goto :goto_1e

    :cond_1b
    const v1, 0x7f11007a

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110180

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-nez v0, :cond_21

    .line 223
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_f

    goto :goto_19

    :cond_f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "groupId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_19
    invoke-direct {v0, v2, v3}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 225
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->updateTransferGroup()V

    .line 228
    :cond_21
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object v0
.end method

.method public isHorizontalOrientation()Z
    .registers 3

    .line 210
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "useHorizontalView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 211
    :cond_12
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->isHorizontalOrientation()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;
    .registers 4

    .line 114
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V

    .line 166
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    .line 174
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$4;->setGroup(Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 65
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setHasOptionsMenu(Z)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setFilteringSupported(Z)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setSortingSupported(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->isScreenLarge()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1a

    const/4 p1, 0x6

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setDefaultViewingGridSize(II)V

    goto :goto_2a

    .line 75
    :cond_1a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->isScreenNormal()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x3

    const/4 v0, 0x5

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setDefaultViewingGridSize(II)V

    goto :goto_2a

    :cond_26
    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setDefaultViewingGridSize(II)V

    :goto_2a
    return-void
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 5

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferAssigneeListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 197
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v0, v1, v2, p1}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 198
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/DeviceInfoDialog;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    const/4 p1, 0x1

    return p1

    :catch_24
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 187
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onPause()V

    .line 188
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 180
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 86
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700b7

    .line 88
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101e1

    .line 89
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getEmptyActionButton()Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$2;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->updateTransferGroup()V

    .line 103
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06011e

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 106
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1, p1, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 108
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method
