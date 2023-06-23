.class public Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;
.super Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.source "TransferListFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;
.implements Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$AbstractGenericItem;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;",
        ">;",
        "Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;",
        "Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;"
    }
.end annotation


# static fields
.field public static final ARG_DEVICE_ID:Ljava/lang/String; = "argDeviceId"

.field public static final ARG_GROUP_ID:Ljava/lang/String; = "argGroupId"

.field public static final ARG_PATH:Ljava/lang/String; = "argPath"

.field public static final REQUEST_CHOOSE_FOLDER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TransferListFragment"


# instance fields
.field private mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field private mLastKnownPath:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object p0
.end method


# virtual methods
.method public changeSavePath(Ljava/lang/String;)V
    .registers 5

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.intent.action.CHOOSE_DIRECTORY"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startPath"

    .line 222
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f11006e

    .line 223
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activityTitle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f1101eb

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-nez v0, :cond_29

    .line 394
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-string v4, "argGroupId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 397
    :try_start_17
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mHeldGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object v0
.end method

.method public goPath(JLjava/lang/String;)V
    .registers 5

    .line 414
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->setGroupId(J)V

    .line 415
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {p1, p3}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->setPath(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->refreshList()V

    return-void
.end method

.method public goPath(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 408
    invoke-virtual {p0, p4}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setDeviceId(Ljava/lang/String;)Z

    .line 409
    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->goPath(JLjava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_6d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6d

    const/4 p2, 0x1

    if-eq p1, p2, :cond_c

    goto :goto_6d

    :cond_c
    const-string p1, "chosenPath"

    .line 299
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 300
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 302
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object p3

    iget-object p3, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const p1, 0x7f1100f8

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_6d

    .line 305
    :cond_38
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f11012f

    .line 307
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x7f110163

    .line 308
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x7f110027

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x7f110084

    .line 311
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$6;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Landroid/net/Uri;)V

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x7f11005c

    .line 320
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$7;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Landroid/net/Uri;)V

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_6d
    :goto_6d
    return-void
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;
    .registers 4

    .line 125
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V

    .line 146
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .registers 8

    .line 197
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_41

    .line 200
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 201
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 202
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 203
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getMode()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V

    return v1

    :cond_40
    return v2

    .line 209
    :cond_41
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 211
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getGroupId()J

    move-result-wide v4

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5c

    const/4 v0, 0x0

    goto :goto_60

    .line 213
    :cond_5c
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_60
    invoke-virtual {p0, v4, v5, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->goPath(JLjava/lang/String;)V

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setFilteringSupported(Z)V

    const/16 p1, 0x64

    .line 80
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setDefaultOrderingCriteria(I)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setDefaultSortingCriteria(I)V

    const/16 p1, 0x65

    .line 82
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setDefaultGroupingCriteria(I)V

    .line 83
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setDefaultSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V

    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 46
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 4

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 170
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    const/4 p1, 0x1

    return p1

    :catch_1a
    const/4 p1, 0x0

    return p1
.end method

.method public onGridSpanSize(II)I
    .registers 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    goto :goto_9

    .line 162
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onGridSpanSize(II)I

    move-result p2

    :goto_9
    return p2
.end method

.method protected onListRefreshed()V
    .registers 4

    .line 183
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onListRefreshed()V

    .line 185
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mLastKnownPath:Ljava/lang/String;

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    :cond_1d
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mLastKnownPath:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 189
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 191
    :cond_2f
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mLastKnownPath:Ljava/lang/String;

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 111
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onPause()V

    .line 112
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 104
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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

    .line 118
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f110224

    .line 119
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 89
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700b1

    .line 91
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->setEmptyImage(I)V

    .line 93
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2a

    const-string p2, "argGroupId"

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p2, "argPath"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "argDeviceId"

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->goPath(JLjava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public bridge synthetic performLayoutClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 46
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public performLayoutClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 6

    const/4 v0, 0x0

    .line 237
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v1, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 239
    instance-of v2, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;

    if-eqz v2, :cond_4c

    .line 240
    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;

    .line 242
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->hasIssues()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 243
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110033

    const/4 v3, 0x0

    .line 246
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f11006e

    .line 248
    new-instance v3, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;)V

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_96

    .line 259
    :cond_46
    iget-object p1, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->directory:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->changeSavePath(Ljava/lang/String;)V

    goto :goto_96

    .line 261
    :cond_4c
    instance-of v2, v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$TransferFolder;

    if-eqz v2, :cond_98

    .line 262
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->setPath(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->refreshList()V

    .line 265
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object p1

    if-eqz p1, :cond_96

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->isSelectionActivated()Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    const-string v1, "helpFolderSelection"

    invoke-virtual {p1, v1, v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_96

    const p1, 0x7f1100e3

    new-array v1, v0, [Ljava/lang/Object;

    .line 266
    invoke-virtual {p0, p1, v1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v1, 0x7f11004b

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$5;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$5;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V

    .line 267
    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_96
    :goto_96
    const/4 p1, 0x1

    return p1

    .line 280
    :cond_98
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9c} :catch_9d

    return p1

    :catch_9d
    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .registers 3

    .line 422
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter;->setDeviceId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateSavePath(Ljava/lang/String;)V
    .registers 3

    .line 427
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getTransferGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    .line 429
    iput-object p1, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->savePath:Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 432
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 433
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$8;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$8;-><init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method
