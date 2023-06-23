.class Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastNotified:J

.field final synthetic this$2:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;

.field final synthetic val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

.field final synthetic val$notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;Lcom/genonbeta/TrebleShot/util/DynamicNotification;Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 4

    .line 892
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->this$2:Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->val$notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    iput-object p3, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->lastNotified:J

    return-void
.end method


# virtual methods
.method public onProgressChange(II)V
    .registers 8

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->lastNotified:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->lastNotified:J

    .line 900
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->val$notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->updateProgress(IIZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    :cond_19
    return-void
.end method

.method public onProgressState()Z
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$CommunicationServer$2$1;->val$interrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
