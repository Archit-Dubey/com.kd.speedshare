.class Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;
.super Ljava/lang/Object;
.source "FolderCreationDialog.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;

.field final synthetic val$createdListener:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;

.field final synthetic val$currentFolder:Lcom/genonbeta/android/framework/io/DocumentFile;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;)V
    .registers 4

    .line 25
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->val$currentFolder:Lcom/genonbeta/android/framework/io/DocumentFile;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->val$createdListener:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProceedClick(Landroidx/appcompat/app/AlertDialog;)Z
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 34
    :cond_16
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->val$currentFolder:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v1, v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->createDirectory(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 37
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1100e0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    .line 41
    :cond_2f
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;->val$createdListener:Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;

    invoke-interface {v1, v0}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;->onFolderCreated(Lcom/genonbeta/android/framework/io/DocumentFile;)V

    .line 42
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
