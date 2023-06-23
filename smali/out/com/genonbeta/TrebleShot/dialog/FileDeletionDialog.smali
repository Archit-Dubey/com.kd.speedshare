.class public Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "FileDeletionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;",
            ">;",
            "Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;

    .line 33
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    if-eqz v2, :cond_c

    .line 34
    iget-object v1, v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$GenericFileHolder;->file:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_26
    const p2, 0x7f11017a

    .line 36
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v1, 0x7f0f0000

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f110027

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p2, v1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f11003c

    .line 40
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;Ljava/util/List;Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;Landroid/content/Context;)V

    invoke-virtual {p0, p2, v1}, Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
