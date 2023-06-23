.class public Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;
.super Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;
.source "FileRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
        ">",
        "Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;"
    }
.end annotation


# static fields
.field public static final JOB_RENAME_FILES:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->mItemList:Ljava/util/List;

    .line 35
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->mItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1a

    const p2, 0x7f110206

    goto :goto_1d

    :cond_1a
    const p2, 0x7f110205

    :goto_1d
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_2f

    const-string v0, "%d"

    goto :goto_3a

    :cond_2f
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->mItemList:Ljava/util/List;

    const/4 v1, 0x0

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->fileName:Ljava/lang/String;

    .line 41
    :goto_3a
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f110066

    .line 45
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->setOnProceedClickListener(ILcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;)V

    return-void
.end method


# virtual methods
.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public renameFile(Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;Ljava/lang/String;Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;",
            ")Z"
        }
    .end annotation

    .line 102
    :try_start_0
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    if-eqz v0, :cond_1a

    .line 103
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$ShortcutDirectoryHolder;->getShortcutObject()Lcom/genonbeta/TrebleShot/object/FileShortcutObject;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 106
    iput-object p2, p1, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->title:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    goto :goto_4b

    .line 109
    :cond_1a
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    if-eqz v0, :cond_32

    .line 110
    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$WritablePathHolder;->pathObject:Lcom/genonbeta/TrebleShot/object/WritablePathObject;

    if-eqz p1, :cond_4b

    .line 113
    iput-object p2, p1, Lcom/genonbeta/TrebleShot/object/WritablePathObject;->title:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    goto :goto_4b

    .line 116
    :cond_32
    iget-object v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v0, p2}, Lcom/genonbeta/android/framework/io/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p3, :cond_49

    .line 118
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-interface {p3, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/FileRenameDialog$OnFileRenameListener;->onFileRename(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4b

    :cond_49
    const/4 p1, 0x1

    return p1

    :catch_4b
    :cond_4b
    :goto_4b
    const/4 p1, 0x0

    return p1
.end method
