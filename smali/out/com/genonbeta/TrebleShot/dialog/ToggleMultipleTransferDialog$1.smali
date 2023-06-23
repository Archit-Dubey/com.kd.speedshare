.class Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;
.super Ljava/lang/Object;
.source "ToggleMultipleTransferDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Ljava/util/List;Ljava/util/List;Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

.field final synthetic val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

.field final synthetic val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 4

    .line 49
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 53
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 55
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 56
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->pauseTransfer(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_2f

    .line 58
    :cond_26
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {p2, v0, p1, v1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransfer(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    :goto_2f
    return-void
.end method
