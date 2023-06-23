.class Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TransferAssigneeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "tableName"

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transferAssignee"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 52
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->refreshList()V

    goto :goto_31

    .line 53
    :cond_20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "transferGroup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 55
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;->access$000(Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;)V

    :cond_31
    :goto_31
    return-void
.end method
