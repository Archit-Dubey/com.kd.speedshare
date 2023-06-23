.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PublicDirectoryHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V
    .registers 5

    .line 683
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;->this$0:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 684
    invoke-direct {p0, p2, p3, p4}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Ljava/io/File;Ljava/lang/String;I)V
    .registers 7

    .line 673
    invoke-static {p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;-><init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V

    .line 675
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_10

    .line 676
    array-length p2, p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    .line 678
    :goto_11
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;->friendlyName:Ljava/lang/String;

    .line 679
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0f0006

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p4

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$PublicDirectoryHolder;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setSelectableSelected(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
