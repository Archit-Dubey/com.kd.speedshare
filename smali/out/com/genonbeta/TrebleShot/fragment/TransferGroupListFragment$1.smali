.class Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TransferGroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "tableName"

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 60
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transferGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 63
    :cond_2c
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->refreshList()V

    goto :goto_5a

    .line 64
    :cond_32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "extraTaskListRunning"

    .line 65
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 66
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/TransferGroupListAdapter;->updateActiveList([J)V

    .line 67
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferGroupListFragment;->refreshList()V

    :cond_5a
    :goto_5a
    return-void
.end method
