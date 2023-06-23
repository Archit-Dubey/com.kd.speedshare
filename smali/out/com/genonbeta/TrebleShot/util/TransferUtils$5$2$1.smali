.class Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 430
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5$2;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->val$type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {p1, p2, v0, v1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransfer(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    return-void
.end method
