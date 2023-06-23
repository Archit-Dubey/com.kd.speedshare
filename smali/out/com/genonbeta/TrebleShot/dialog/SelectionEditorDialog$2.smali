.class Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$2;
.super Ljava/lang/Object;
.source "SelectionEditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->show()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 90
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->massCheck(Z)V

    return-void
.end method
