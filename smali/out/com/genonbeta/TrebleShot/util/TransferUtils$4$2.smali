.class Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

.field final synthetic val$responseJSON:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4;Lorg/json/JSONObject;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;->val$responseJSON:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 289
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    :try_start_9
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;->val$responseJSON:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    const-string v1, "errorUnknown"

    :goto_14
    const/4 v2, -0x1

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7fd654ab

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3f

    const v4, -0x4522f99

    if-eq v3, v4, :cond_35

    const v4, 0x5c95c86f

    if-eq v3, v4, :cond_2b

    goto :goto_48

    :cond_2b
    const-string v3, "notFound"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v2, 0x0

    goto :goto_48

    :cond_35
    const-string v3, "errorRequireTrustZone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v2, 0x1

    goto :goto_48

    :cond_3f
    const-string v3, "notAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v2, 0x2

    :cond_48
    :goto_48
    if-eqz v2, :cond_5a

    if-eq v2, v6, :cond_56

    if-eq v2, v5, :cond_52

    const v1, 0x7f110107

    goto :goto_5d

    :cond_52
    const v1, 0x7f1100f1

    goto :goto_5d

    :cond_56
    const v1, 0x7f1100d4

    goto :goto_5d

    :cond_5a
    const v1, 0x7f1100f4

    .line 311
    :goto_5d
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 312
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110069

    .line 313
    new-instance v2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2$1;-><init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4$2;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
