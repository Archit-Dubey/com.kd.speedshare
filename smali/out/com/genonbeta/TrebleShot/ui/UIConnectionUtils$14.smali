.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->validateLocationPermission(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;Landroid/app/Activity;)V
    .registers 4

    .line 452
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 456
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    .line 457
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$14;->val$activity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 458
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 457
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
