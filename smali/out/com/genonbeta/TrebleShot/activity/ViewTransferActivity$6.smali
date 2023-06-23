.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;
.super Ljava/lang/Object;
.source "ViewTransferActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->updateCalculations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V
    .registers 2

    .line 618
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute()V
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$200(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    .line 623
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    .line 624
    invoke-static {v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$300(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v1

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    const/16 v1, 0x8

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$300(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v0

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4d

    .line 628
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$400(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferObject;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 629
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$400(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 630
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$402(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/TrebleShot/object/TransferObject;

    :cond_4d
    return-void
.end method
