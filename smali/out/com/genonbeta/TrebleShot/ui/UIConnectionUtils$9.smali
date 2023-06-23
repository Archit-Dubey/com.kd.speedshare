.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;
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

.field final synthetic val$locationPermRequestId:I

.field final synthetic val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Landroidx/fragment/app/FragmentActivity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V
    .registers 5

    .line 349
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput p3, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->val$locationPermRequestId:I

    iput-object p4, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 354
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget v0, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->val$locationPermRequestId:I

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$9;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->toggleHotspot(ZLandroidx/fragment/app/FragmentActivity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    return-void
.end method
