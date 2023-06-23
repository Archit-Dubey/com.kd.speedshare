.class public Lcom/genonbeta/TrebleShot/fragment/FileListFragment;
.super Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.source "FileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;,
        Lcom/genonbeta/TrebleShot/fragment/FileListFragment$OnPathChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_FILE_LIST_CHANGED:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED"

.field public static final ARG_SELECT_BY_CLICK:Ljava/lang/String; = "argSelectByClick"

.field public static final EXTRA_FILE_LOCATION:Ljava/lang/String; = "extraFileLocation"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "extraFile"

.field public static final EXTRA_FILE_PARENT:Ljava/lang/String; = "extraPath"

.field public static final REQUEST_WRITE_ACCESS:I = 0x108

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastKnownPath:Lcom/genonbeta/android/framework/io/DocumentFile;

.field private mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mPathChangedListener:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$OnPathChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectByClick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mSelectByClick:Z

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 67
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static handleEditingAction(ILcom/genonbeta/TrebleShot/fragment/FileListFragment;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/genonbeta/TrebleShot/fragment/FileListFragment;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;)Z"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    const v1, 0x7f090042

    if-ne p0, v1, :cond_1d

    .line 118
    new-instance p0, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;

    invoke-direct {v2, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;)V

    invoke-direct {p0, v1, p2, v2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;)V

    .line 134
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_39

    :cond_1d
    const v1, 0x7f090045

    if-ne p0, v1, :cond_34

    .line 136
    new-instance p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;

    invoke-direct {v2, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;)V

    invoke-direct {p0, v1, p2, v2}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_39

    :cond_34
    const p1, 0x7f090041

    if-ne p0, p1, :cond_3b

    :goto_39
    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4

    .line 479
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 5

    if-eqz p1, :cond_1d

    .line 484
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->canRead()Z

    move-result v0

    if-nez v0, :cond_1d

    const v0, 0x7f1100d5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 485
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    .line 491
    :cond_1d
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mPathChangedListener:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$OnPathChangedListener;

    if-eqz v0, :cond_24

    .line 492
    invoke-interface {v0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$OnPathChangedListener;->onPathChanged(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 494
    :cond_24
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 495
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->refreshList()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 190
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    new-instance p1, Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 194
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5d

    const/16 p2, 0x108

    if-ne p1, p2, :cond_5d

    .line 205
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 207
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_5d

    if-eqz p1, :cond_5d

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 208
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 212
    :try_start_28
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p2

    .line 213
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p3

    new-instance v0, Lcom/genonbeta/TrebleShot/object/WritablePathObject;

    .line 214
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/genonbeta/TrebleShot/object/WritablePathObject;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    invoke-virtual {p3, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    const/4 p1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_49} :catch_4a

    goto :goto_5d

    :catch_4a
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 218
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110107

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
    .registers 4

    .line 276
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V

    .line 382
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$5;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 164
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 166
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setFilteringSupported(Z)V

    const/16 p1, 0x64

    .line 167
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setDefaultOrderingCriteria(I)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setDefaultSortingCriteria(I)V

    const/16 p1, 0x65

    .line 169
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setDefaultGroupingCriteria(I)V

    .line 170
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setDefaultSelectionCallback(Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;)V

    .line 172
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 173
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "argSelectByClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 174
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mSelectByClick:Z

    :cond_39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 227
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000e

    .line 228
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090063

    .line 230
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 232
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1c

    if-eqz p1, :cond_1c

    const/4 p2, 0x1

    .line 233
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1c
    return-void
.end method

.method public bridge synthetic onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 48
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 2

    .line 403
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onListRefreshed()V
    .registers 4

    .line 449
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onListRefreshed()V

    .line 452
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mLastKnownPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    if-eqz v1, :cond_2f

    :cond_1d
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mLastKnownPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    if-eqz v1, :cond_2f

    .line 455
    invoke-virtual {v1, v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 456
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 458
    :cond_2f
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mLastKnownPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090063

    if-ne v0, v1, :cond_d

    .line 242
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->requestMountStorage()V

    goto :goto_42

    :cond_d
    const v1, 0x7f090064

    if-ne v0, v1, :cond_44

    .line 244
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 245
    new-instance p1, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->shortcutItem(Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V

    :goto_42
    const/4 p1, 0x1

    return p1

    .line 247
    :cond_44
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 418
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onPause()V

    .line 419
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    .line 255
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f090064

    .line 257
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 260
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 261
    :goto_1b
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_4b

    .line 265
    :try_start_20
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    const v0, 0x7f110065

    .line 266
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_44} :catch_45

    goto :goto_4b

    :catch_45
    const v0, 0x7f110020

    .line 268
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 410
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onResume()V

    .line 411
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 426
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 429
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraFileLocation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 181
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0700cb

    .line 183
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101c8

    .line 184
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4

    .line 435
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_25

    const-string v0, "extraFileLocation"

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 439
    :try_start_d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 441
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method public bridge synthetic performLayoutClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 48
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public performLayoutClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 7

    const/4 v0, 0x0

    .line 511
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 513
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->getViewType()I

    move-result v2

    const/16 v3, 0x6e

    const/4 v4, 0x1

    if-ne v2, v3, :cond_20

    .line 514
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->getRequestCode()I

    move-result v2

    if-ne v2, v4, :cond_20

    .line 515
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->requestMountStorage()V

    goto :goto_82

    .line 516
    :cond_20
    instance-of v2, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;

    if-eqz v2, :cond_37

    iget-boolean v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mSelectByClick:Z

    if-eqz v2, :cond_37

    .line 517
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 518
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    .line 519
    :cond_37
    instance-of v2, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;

    if-nez v2, :cond_45

    instance-of v2, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    if-eqz v2, :cond_40

    goto :goto_45

    .line 538
    :cond_40
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    return p1

    .line 521
    :cond_45
    :goto_45
    iget-object p1, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 523
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object p1

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getSelectionCallback()Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->isSelectionActivated()Z

    move-result p1

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    const-string v1, "helpFolderSelection"

    invoke-virtual {p1, v1, v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_82

    const p1, 0x7f1100e3

    new-array v1, v0, [Ljava/lang/Object;

    .line 524
    invoke-virtual {p0, p1, v1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v1, 0x7f11004b

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$6;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$6;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V

    .line 525
    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_82
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_1 .. :try_end_82} :catch_83

    :cond_82
    :goto_82
    return v4

    :catch_83
    move-exception p1

    .line 542
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    return v0
.end method

.method public bridge synthetic performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 48
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 4

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1, p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->openUriForeground(Landroid/app/Activity;Lcom/genonbeta/android/framework/io/DocumentFile;)Z

    move-result p1
    :try_end_16
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    .line 576
    :catch_17
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic performLayoutLongClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 2

    .line 48
    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->performLayoutLongClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    move-result p1

    return p1
.end method

.method public performLayoutLongClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
    .registers 4

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 554
    instance-of v1, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;

    if-nez v1, :cond_18

    instance-of v0, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    if-eqz v0, :cond_2e

    .line 557
    :cond_18
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 558
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->setSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0
    :try_end_26
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_26} :catch_2a

    if-eqz v0, :cond_2e

    const/4 p1, 0x1

    return p1

    :catch_2a
    move-exception v0

    .line 561
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    .line 564
    :cond_2e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->performLayoutLongClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result p1

    return p1
.end method

.method public requestMountStorage()V
    .registers 4

    .line 500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    return-void

    .line 503
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x108

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 504
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1100eb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public scanFile(Lcom/genonbeta/android/framework/io/DocumentFile;)Z
    .registers 5

    .line 582
    instance-of v0, p1, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2b

    .line 585
    :cond_d
    move-object v0, p1

    check-cast v0, Lcom/genonbeta/android/framework/io/LocalDocumentFile;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/LocalDocumentFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    invoke-virtual {v1, v0, p1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    return p1
.end method

.method public setOnPathChangedListener(Lcom/genonbeta/TrebleShot/fragment/FileListFragment$OnPathChangedListener;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->mPathChangedListener:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$OnPathChangedListener;

    return-void
.end method

.method protected shortcutItem(Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V
    .registers 6

    .line 463
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 466
    :try_start_9
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 467
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    const v2, 0x7f1100fe

    new-array v3, v1, [Ljava/lang/Object;

    .line 469
    invoke-virtual {p0, v2, v3}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    goto :goto_2b

    .line 471
    :catch_1c
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Lcom/genonbeta/android/database/DatabaseObject;)J

    const p1, 0x7f1100c1

    new-array v0, v1, [Ljava/lang/Object;

    .line 472
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_2b
    return-void
.end method
