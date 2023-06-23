.class Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;
.super Ljava/lang/Object;
.source "TransferUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 343
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$activity:Lcom/genonbeta/TrebleShot/app/Activity;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$group:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$assignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3$1;->this$1:Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4$3;->this$0:Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;->val$connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->requestStartSending(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    return-void
.end method
