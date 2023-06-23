.class Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment$LayoutClickListener<",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLayoutClick(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;Z)Z
    .registers 4

    .line 113
    check-cast p2, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;->onLayoutClick(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;Z)Z

    move-result p1

    return p1
.end method

.method public onLayoutClick(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;Z)Z
    .registers 4

    const/4 p1, 0x0

    if-eqz p3, :cond_4

    return p1

    .line 121
    :cond_4
    :try_start_4
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-static {p3}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    move-result-object p3

    .line 122
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p3

    check-cast p3, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 123
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getItem(I)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 125
    instance-of p3, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;

    if-eqz p3, :cond_2d

    .line 126
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    check-cast p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-static {p3, p2}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    :try_end_27
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_4 .. :try_end_27} :catch_29

    const/4 p1, 0x1

    return p1

    :catch_29
    move-exception p2

    .line 130
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/exception/NotReadyException;->printStackTrace()V

    :cond_2d
    return p1
.end method
