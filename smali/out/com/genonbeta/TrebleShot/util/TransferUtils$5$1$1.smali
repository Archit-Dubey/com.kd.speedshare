.class Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;)V
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 405
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {p1, v0, v1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->recoverIncomingInterruptions(Landroid/content/Context;J)V

    .line 406
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$1;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {p1, p2, v0, v1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransferWithTest(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    return-void
.end method
