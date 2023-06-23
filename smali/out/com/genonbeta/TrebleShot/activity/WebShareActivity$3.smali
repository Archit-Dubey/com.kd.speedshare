.class Lcom/genonbeta/TrebleShot/activity/WebShareActivity$3;
.super Ljava/lang/Object;
.source "WebShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/WebShareActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/WebShareActivity;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WebShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 87
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/WebShareActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/WebShareActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;->toggleWebShare(Z)V

    return-void
.end method
