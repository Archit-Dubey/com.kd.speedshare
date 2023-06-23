.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

.field final synthetic val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

.field final synthetic val$shortcutObject:Lcom/genonbeta/TrebleShot/object/FileShortcutObject;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V
    .registers 4

    .line 345
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$shortcutObject:Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const v2, 0x7f090044

    if-ne p1, v2, :cond_23

    .line 355
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->val$clazz:Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z

    goto/16 :goto_ab

    :cond_23
    const v2, 0x7f090046

    if-ne p1, v2, :cond_44

    .line 356
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 357
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 358
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getParentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    goto :goto_ab

    :cond_44
    const v2, 0x7f090043

    if-ne p1, v2, :cond_67

    .line 359
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    instance-of v2, v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    if-eqz v2, :cond_67

    .line 361
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->pathObject:Lcom/genonbeta/TrebleShot/object/WritablePathObject;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/DatabaseObject;)V

    goto :goto_ab

    :cond_67
    const v2, 0x7f090047

    if-ne p1, v2, :cond_8c

    .line 363
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$shortcutObject:Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    if-eqz v0, :cond_77

    goto :goto_88

    :cond_77
    new-instance v0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->friendlyName:Ljava/lang/String;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->val$fileHolder:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 365
    invoke-virtual {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    :goto_88
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->shortcutItem(Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V

    goto :goto_ab

    :cond_8c
    const v2, 0x7f090040

    if-ne p1, v2, :cond_ac

    .line 367
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_ab
    return v1

    .line 369
    :cond_ac
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4$2;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-static {p1, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->handleEditingAction(ILcom/genonbeta/TrebleShot/fragment/FileListFragment;Ljava/util/List;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
