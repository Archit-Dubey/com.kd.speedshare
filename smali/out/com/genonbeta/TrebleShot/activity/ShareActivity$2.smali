.class Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ShareActivity;->updateProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

.field final synthetic val$current:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ShareActivity;II)V
    .registers 4

    .line 207
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    iput p2, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->val$current:I

    iput p3, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->val$current:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->access$200(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;->val$total:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
