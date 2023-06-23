.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;

.field final synthetic val$parentFile:Lcom/genonbeta/android/framework/io/DocumentFile;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;->val$parentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 96
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$1$1;->val$parentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->goPath(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    return-void
.end method
