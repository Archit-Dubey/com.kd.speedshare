.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;
.super Ljava/lang/Object;
.source "ViewTransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->toggleTaskForAssignee(Lcom/genonbeta/TrebleShot/object/ShowingAssignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

.field final synthetic val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/ShowingAssignee;)V
    .registers 3

    .line 592
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 596
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    .line 597
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    new-instance v3, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5$1;

    invoke-direct {v3, p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;)V

    .line 596
    invoke-static {p1, v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->changeConnection(Landroidx/fragment/app/FragmentActivity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;)V

    return-void
.end method
