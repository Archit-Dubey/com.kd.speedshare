.class Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$2;
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


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V
    .registers 3

    .line 67
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$2;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$2;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 71
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$2;->val$activity:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startDeviceAddingActivity()V

    return-void
.end method
