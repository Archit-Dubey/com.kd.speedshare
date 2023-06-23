.class Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ShareActivity;->updateText(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ShareActivity;Ljava/lang/String;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->access$300(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
