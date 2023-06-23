.class public Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;
.super Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;
.source "FolderCreationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f110176

    .line 22
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 24
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog$OnFolderCreatedListener;)V

    const p2, 0x7f11003a

    invoke-virtual {p0, p2, p1}, Lcom/genonbeta/TrebleShot/dialog/FolderCreationDialog;->setOnProceedClickListener(ILcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;)V

    return-void
.end method
