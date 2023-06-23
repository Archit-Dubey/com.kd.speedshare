.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$3;
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


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 356
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$3;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method
