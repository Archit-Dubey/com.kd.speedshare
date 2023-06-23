.class public Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;
.super Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentFileHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V
    .registers 4

    .line 664
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$RecentFileHolder;->this$0:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;

    .line 665
    invoke-direct {p0, p2, p3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolder;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V

    return-void
.end method
