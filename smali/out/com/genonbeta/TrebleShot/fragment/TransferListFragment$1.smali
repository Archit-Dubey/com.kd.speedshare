.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TransferListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "tableName"

    .line 67
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transfer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 68
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "transferGroup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 70
    :cond_26
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->refreshList()V

    :cond_2b
    return-void
.end method
