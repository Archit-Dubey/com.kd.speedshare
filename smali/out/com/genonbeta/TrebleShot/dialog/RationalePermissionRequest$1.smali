.class Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;
.super Ljava/lang/Object;
.source "RationalePermissionRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/app/Activity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;Lcom/genonbeta/TrebleShot/app/Activity;)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 46
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    .line 48
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$1;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
