.class Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;
.super Ljava/lang/Object;
.source "ShareAppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->shareAsLink(Landroid/content/Context;)V
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

    .line 100
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;->this$0:Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;->val$context:Landroid/content/Context;

    const v1, 0x7f1101c4

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "https://play.google.com/store/apps/details?id=com.kd.speedshare"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.TEXT"

    .line 109
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$4;->val$context:Landroid/content/Context;

    const v3, 0x7f11019b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    return-void
.end method
