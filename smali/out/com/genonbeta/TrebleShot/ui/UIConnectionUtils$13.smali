.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;
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

.field final synthetic val$requestId:I

.field final synthetic val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;Landroid/app/Activity;I)V
    .registers 5

    .line 431
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 435
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    .line 438
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, p2

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object p2, v1, v0

    iget p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$13;->val$requestId:I

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
