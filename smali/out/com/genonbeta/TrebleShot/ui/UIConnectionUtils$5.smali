.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->showConnectionOptions(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$locationPermRequestId:I

.field final synthetic val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V
    .registers 5

    .line 273
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->val$locationPermRequestId:I

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 277
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->access$002(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Z)Z

    .line 278
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->val$locationPermRequestId:I

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$5;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-virtual {p1, v0, v1, v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->turnOnWiFi(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    return-void
.end method
