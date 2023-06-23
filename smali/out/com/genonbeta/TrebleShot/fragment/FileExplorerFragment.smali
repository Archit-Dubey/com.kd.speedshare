.class public Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;
.super Lcom/genonbeta/TrebleShot/fragment/FileListFragment;
.source "FileExplorerFragment.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;
.implements Lcom/genonbeta/TrebleShot/ui/callback/DetachListener;
.implements Lcom/genonbeta/TrebleShot/ui/callback/IconSupport;
.implements Lcom/genonbeta/TrebleShot/ui/callback/TitleSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

.field private mPathView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRequestedPath:Lcom/genonbeta/android/framework/io/DocumentFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mRequestedPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-void
.end method

.method public static getReadableFolder(Lcom/genonbeta/android/framework/io/DocumentFile;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_8
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canRead()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_13

    .line 56
    :cond_f
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getReadableFolder(Lcom/genonbeta/android/framework/io/DocumentFile;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    :goto_13
    return-object p0
.end method


# virtual methods
.method public getIconRes()I
    .registers 2

    const v0, 0x7f0700cb

    return v0
.end method

.method public getPathAdapter()Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    return-object v0
.end method

.method public getPathView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    const v0, 0x7f110195

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()Z
    .registers 4

    .line 107
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_e
    invoke-static {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getReadableFolder(Lcom/genonbeta/android/framework/io/DocumentFile;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 114
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_25

    .line 117
    :cond_21
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    goto :goto_29

    :cond_25
    :goto_25
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 62
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0900f6

    .line 64
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->setDividerView(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 125
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000d

    .line 126
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onListRefreshed()V
    .registers 3

    .line 132
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onListRefreshed()V

    .line 134
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->goTo(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 135
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2c

    .line 138
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2c
    return-void
.end method

.method protected bridge synthetic onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 3

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 7

    .line 70
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p2, 0x7f0900f5

    .line 73
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    new-instance p2, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    .line 76
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;)V

    invoke-virtual {p2, v1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;->setOnClickListener(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;)V

    .line 85
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 88
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 90
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mPathAdapter:Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$FilePathResolverRecyclerAdapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0900f4

    .line 92
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onListView(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090062

    if-ne v0, v1, :cond_52

    .line 147
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 148
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$2;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;)V

    .line 155
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_50

    .line 157
    :cond_41
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const v0, 0x7f1100ca

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_50
    const/4 p1, 0x1

    return p1

    .line 159
    :cond_52
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mRequestedPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    if-eqz p1, :cond_a

    .line 101
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->requestPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    :cond_a
    return-void
.end method

.method public requestPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 3

    .line 188
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    .line 189
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mRequestedPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->mRequestedPath:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 195
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    return-void
.end method
