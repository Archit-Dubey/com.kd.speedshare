.class public Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/genonbeta/android/framework/object/Selectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableStream"
.end annotation


# instance fields
.field private mDirectory:Ljava/lang/String;

.field private mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

.field private mFriendlyName:Ljava/lang/String;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 253
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;)V
    .registers 4

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mSelected:Z

    .line 246
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    .line 247
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mDirectory:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mFriendlyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    return-object v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mSelected:Z

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mFriendlyName:Ljava/lang/String;

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->mSelected:Z

    const/4 p1, 0x1

    return p1
.end method
