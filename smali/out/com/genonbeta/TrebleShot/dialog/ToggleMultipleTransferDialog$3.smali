.class Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;
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
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 81
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    sget-object p2, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {p1, v0, v1, p2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->fetchFirstTransfer(Landroid/content/Context;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/object/TransferObject;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 85
    new-instance p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    invoke-direct {p2, v0, v1, p1}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(JLjava/lang/String;)V

    .line 89
    :try_start_1d
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 90
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {p1, v0, p2, v1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransferWithTest(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    :try_end_33
    .catch Lcom/genonbeta/android/database/exception/ReconstructionFailedException; {:try_start_1d .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    return-void
.end method
