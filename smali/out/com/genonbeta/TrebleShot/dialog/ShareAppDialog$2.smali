.class Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;
.super Ljava/lang/Object;
.source "ShareAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 52
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$2;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V

    return-void
.end method
