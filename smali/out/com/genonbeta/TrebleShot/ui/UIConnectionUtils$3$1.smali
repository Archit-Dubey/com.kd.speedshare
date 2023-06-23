.class Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;
.super Ljava/lang/Object;
.source "UIConnectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 127
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->this$0:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v2, p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$task:Lcom/genonbeta/TrebleShot/ui/UITask;

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$object:Ljava/lang/Object;

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget v4, p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$accessPin:I

    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3$1;->this$1:Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;

    iget-object v5, p1, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$3;->val$registerListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    return-void
.end method
