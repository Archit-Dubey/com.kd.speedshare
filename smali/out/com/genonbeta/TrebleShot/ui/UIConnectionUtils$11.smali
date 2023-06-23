.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$11;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->turnOnWiFi(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

.field final synthetic val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)V
    .registers 3

    .line 390
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$11;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$11;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 394
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$11;->val$watcher:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;->onResultReturned(ZZ)V

    return-void
.end method
