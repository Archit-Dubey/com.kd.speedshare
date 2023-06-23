.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;
.source "FileListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$StorageHolderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;I)V
    .registers 5

    .line 551
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 556
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public setSelectableSelected(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
