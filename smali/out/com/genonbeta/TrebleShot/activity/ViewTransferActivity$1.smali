.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;
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

    .line 90
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-string p1, "com.genonbeta.intent.action.DATABASE_CHANGE"

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p1, "tableName"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p1, "transferGroup"

    const-string v0, "tableName"

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 96
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->reconstructGroup()V

    goto/16 :goto_12a

    :cond_29
    const-string p1, "changeType"

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12a

    const-string p1, "transfer"

    const-string v0, "tableName"

    .line 98
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12a

    const-string p1, "typeInsert"

    const-string v0, "changeType"

    .line 99
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    const-string p1, "typeRemove"

    const-string v0, "changeType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12a

    .line 100
    :cond_5b
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->updateCalculations()V

    goto/16 :goto_12a

    :cond_62
    const-string p1, "com.genonbeta.TrebleShot.transaction.action.TASK_STATUS_CHANGE"

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c5

    const-string p1, "extraGroupId"

    .line 103
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c5

    const-string p1, "extraDeviceId"

    .line 104
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c5

    const-string p1, "extraGroupId"

    const-wide/16 v0, -0x1

    .line 105
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object p1

    iget-wide v2, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_12a

    const-string p1, "extraDeviceId"

    .line 108
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extraTaskChangeType"

    const/4 v1, -0x1

    .line 109
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 111
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_b2

    .line 113
    :try_start_a8
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 115
    :cond_b2
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    :goto_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_a8 .. :try_end_bc} :catchall_c2

    .line 118
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$200(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    goto :goto_12a

    :catchall_c2
    move-exception p1

    .line 116
    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p1

    :cond_c5
    const-string p1, "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE"

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12a

    const-string p1, "extraTaskListRunning"

    .line 121
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    const-string v0, "extraDeviceListRunning"

    .line 122
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_12a

    if-eqz p2, :cond_12a

    .line 124
    array-length v0, p1

    .line 125
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_12a

    .line 128
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 129
    :try_start_ef
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 131
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_fb
    if-ge v2, v1, :cond_120

    aget-wide v4, p1, v2

    add-int/lit8 v6, v3, 0x1

    .line 132
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    iget-object v7, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v7}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$000(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v7

    iget-wide v7, v7, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    cmp-long v9, v4, v7

    if-nez v9, :cond_11c

    .line 135
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11c
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_fb

    .line 138
    :cond_120
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->access$200(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    .line 139
    monitor-exit v0

    goto :goto_12a

    :catchall_127
    move-exception p1

    monitor-exit v0
    :try_end_129
    .catchall {:try_start_ef .. :try_end_129} :catchall_127

    throw p1

    :cond_12a
    :goto_12a
    return-void
.end method
