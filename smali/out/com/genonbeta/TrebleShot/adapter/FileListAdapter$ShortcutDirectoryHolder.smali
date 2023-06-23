.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutDirectoryHolder"
.end annotation


# instance fields
.field private mShortcutObject:Lcom/genonbeta/TrebleShot/object/FileShortcutObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/FileShortcutObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 533
    iget-object v0, p2, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->path:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->title:Ljava/lang/String;

    const v2, 0x7f11021d

    .line 534
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0700a5

    .line 533
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$DirectoryHolder;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/lang/String;I)V

    .line 536
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;->mShortcutObject:Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    return-void
.end method


# virtual methods
.method public getShortcutObject()Lcom/genonbeta/TrebleShot/object/FileShortcutObject;
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;->mShortcutObject:Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    return-object v0
.end method
