.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->toggleHotspot(ZLandroidx/fragment/app/FragmentActivity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroidx/fragment/app/FragmentActivity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V
    .registers 4

    .line 328
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 332
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    .line 333
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->getConnectionUtils()Lcom/genonbeta/TrebleShot/util/ConnectionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/ConnectionUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 334
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 332
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 336
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$8;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    return-void
.end method
