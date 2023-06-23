.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mUpdateSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string p1, "extraFile"

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "extraPath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 76
    :try_start_16
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_31

    .line 78
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_31

    .line 79
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->refreshList()V

    goto/16 :goto_ec

    :cond_31
    if-eqz v0, :cond_ec

    .line 81
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 84
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->refreshList()V

    goto/16 :goto_ec

    .line 85
    :cond_6e
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 86
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->mUpdateSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/4 v2, 0x0

    if-nez v1, :cond_86

    .line 87
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    const v3, 0x7f1100ec

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->mUpdateSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 89
    :cond_86
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->mUpdateSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    const v4, 0x7f1100db

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const p2, 0x7f11007e

    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 91
    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_ad} :catch_ae

    goto :goto_ec

    :catch_ae
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ec

    .line 105
    :cond_b3
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getPath()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_ec

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ec

    const-string p1, "tableName"

    .line 107
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writablePath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 108
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fileBookmark"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 109
    :cond_e7
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->refreshList()V

    :cond_ec
    :goto_ec
    return-void
.end method
