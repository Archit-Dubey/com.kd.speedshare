.class Lcom/genonbeta/TrebleShot/activity/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 142
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 143
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt(Z)Z

    :cond_16
    return-void
.end method
