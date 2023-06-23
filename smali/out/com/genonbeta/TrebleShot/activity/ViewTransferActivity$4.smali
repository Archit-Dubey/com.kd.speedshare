.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;
.super Ljava/lang/Object;
.source "ViewTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

.field final synthetic val$assignee:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Ljava/util/List;)V
    .registers 3

    .line 380
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;->val$assignee:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 384
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;->val$assignee:Ljava/util/List;

    .line 385
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->show()V

    return-void
.end method
