.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->onQuickActions(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

.field final synthetic val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 299
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 301
    iget-object v1, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->isFile()Z

    move-result v1

    .line 302
    iget-object v2, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_31

    instance-of v2, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    if-eqz v2, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v2, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v2, 0x1

    .line 304
    :goto_32
    iget-object v5, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v5}, Lcom/genonbeta/android/framework/io/DocumentFile;->canRead()Z

    move-result v5

    .line 305
    instance-of v6, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolderImpl;

    if-nez v6, :cond_43

    instance-of v6, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    if-eqz v6, :cond_41

    goto :goto_43

    :cond_41
    const/4 v6, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v6, 0x1

    .line 307
    :goto_44
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v8, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object v8, v8, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 308
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 310
    instance-of v8, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    const/4 v9, 0x0

    if-eqz v8, :cond_62

    .line 311
    move-object v8, v0

    check-cast v8, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;->getShortcutObject()Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    move-result-object v9

    goto :goto_87

    .line 312
    :cond_62
    iget-object v8, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v8}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_87

    .line 316
    :try_start_6a
    new-instance v8, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    iget-object v10, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v10}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;-><init>(Landroid/net/Uri;)V

    .line 317
    iget-object v10, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object v10, v10, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v10}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_84} :catch_86

    move-object v9, v8

    goto :goto_87

    :catch_86
    nop

    .line 326
    :cond_87
    :goto_87
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v10, 0x7f0d0001

    invoke-virtual {v8, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v8, 0x7f090044

    .line 328
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v5, :cond_9e

    if-eqz v1, :cond_9e

    const/4 v5, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v5, 0x0

    :goto_9f
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f090045

    .line 329
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v5, 0x7f090042

    .line 330
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_b8

    if-nez v6, :cond_b8

    const/4 v3, 0x1

    :cond_b8
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v2, 0x7f090046

    .line 331
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    instance-of v3, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;

    .line 332
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f090040

    .line 333
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    .line 334
    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 335
    invoke-virtual {v5}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 334
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f090043

    .line 336
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    instance-of v3, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    .line 337
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f090047

    .line 338
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    xor-int/2addr v1, v4

    .line 339
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    if-nez v9, :cond_109

    const v1, 0x7f110020

    goto :goto_10c

    :cond_109
    const v1, 0x7f110065

    .line 340
    :goto_10c
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 344
    new-instance p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;

    invoke-direct {p1, p0, v0, v9}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V

    invoke-virtual {v7, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 375
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
