.class Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;
.super Ljava/lang/Object;
.source "AbstractFailureAwareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->show()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;Landroidx/appcompat/app/AlertDialog;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 45
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;->access$000(Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog;)Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-interface {p1, v0}, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;->onProceedClick(Landroidx/appcompat/app/AlertDialog;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 46
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_13
    return-void
.end method
