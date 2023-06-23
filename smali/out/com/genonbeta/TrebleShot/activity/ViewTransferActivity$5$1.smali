.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5$1;
.super Ljava/lang/Object;
.source "ViewTransferActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionUpdated(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 5

    .line 603
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    .line 605
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 604
    invoke-static {v1, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1100c9

    .line 603
    invoke-virtual {p2, p1, v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
