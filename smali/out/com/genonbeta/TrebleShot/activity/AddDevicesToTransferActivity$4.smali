.class Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;
.super Ljava/lang/Object;
.source "AddDevicesToTransferActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->updateProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

.field final synthetic val$current:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;II)V
    .registers 4

    .line 311
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    iput p2, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->val$current:I

    iput p3, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->access$200(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->val$current:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->this$0:Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->access$300(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;->val$total:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
