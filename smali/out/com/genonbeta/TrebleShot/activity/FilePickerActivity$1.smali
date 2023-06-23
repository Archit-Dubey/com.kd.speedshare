.class Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;)Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/FileExplorerFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 98
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 99
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    goto :goto_29

    :cond_1e
    const v0, 0x7f1100ca

    const/4 v1, -0x1

    .line 101
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_29
    return-void
.end method
