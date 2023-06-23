.class public abstract Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.super Lcom/genonbeta/TrebleShot/util/InterruptAwareJob;
.source "WorkerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/WorkerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RunningTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;",
        ">",
        "Lcom/genonbeta/TrebleShot/util/InterruptAwareJob;"
    }
.end annotation


# instance fields
.field private mActivityIntent:Landroid/app/PendingIntent;

.field private mAnchorListener:Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHash:I

.field private mIconRes:I

.field private mInterrupter:Lcom/genonbeta/android/framework/util/Interrupter;

.field private mLastNotified:J

.field private mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

.field private mService:Lcom/genonbeta/TrebleShot/service/WorkerService;

.field private mStatusText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 234
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/util/InterruptAwareJob;-><init>()V

    const-wide/16 v0, 0x0

    .line 227
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mLastNotified:J

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mHash:I

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    return-object p0
.end method

.method static synthetic access$002(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Lcom/genonbeta/TrebleShot/util/DynamicNotification;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    return-object p1
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Landroid/app/PendingIntent;
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mActivityIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Lcom/genonbeta/TrebleShot/service/WorkerService;)V
    .registers 2

    .line 220
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setService(Lcom/genonbeta/TrebleShot/service/WorkerService;)V

    return-void
.end method

.method private setService(Lcom/genonbeta/TrebleShot/service/WorkerService;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mService:Lcom/genonbeta/TrebleShot/service/WorkerService;

    return-void
.end method


# virtual methods
.method public detachAnchor()V
    .registers 2

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mAnchorListener:Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 276
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mActivityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_18

    .line 277
    check-cast p1, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    .line 278
    iget v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mHash:I

    if-eqz v0, :cond_16

    iget p1, p1, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mHash:I

    if-eqz p1, :cond_16

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    .line 281
    :cond_18
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mAnchorListener:Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mActivityIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    .line 322
    iget v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mIconRes:I

    return v0
.end method

.method public getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mInterrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    if-nez v0, :cond_b

    .line 248
    new-instance v0, Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {v0}, Lcom/genonbeta/android/framework/util/Interrupter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mInterrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    .line 250
    :cond_b
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mInterrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    return-object v0
.end method

.method protected getService()Lcom/genonbeta/TrebleShot/service/WorkerService;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mService:Lcom/genonbeta/TrebleShot/service/WorkerService;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 267
    iget v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mHash:I

    if-eqz v0, :cond_5

    return v0

    .line 270
    :cond_5
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onInterrupted()V
    .registers 1

    return-void
.end method

.method protected abstract onRun()V
.end method

.method public publishStatusText(Ljava/lang/String;)Z
    .registers 6

    .line 349
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mStatusText:Ljava/lang/String;

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mLastNotified:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1c

    .line 352
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mService:Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->publishNotification(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mLastNotified:J

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method protected run()V
    .registers 2

    .line 369
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Lcom/genonbeta/android/framework/util/Interrupter;)V

    return-void
.end method

.method public run(Landroid/content/Context;)Z
    .registers 5

    .line 374
    new-instance v0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask$1;-><init>(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;)V

    .line 394
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public setAnchorListener(Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
            "TT;>;"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mAnchorListener:Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    .line 293
    invoke-interface {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;->onAttachedToTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
            "TT;>;"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mActivityIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
            "TT;>;"
        }
    .end annotation

    .line 362
    invoke-static {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService;->intentHash(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mHash:I

    const/4 v0, 0x0

    .line 363
    invoke-static {p1, v0, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setContentIntent(Landroid/app/PendingIntent;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    return-object p0
.end method

.method public setIconRes(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
            "TT;>;"
        }
    .end annotation

    .line 327
    iput p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mIconRes:I

    return-object p0
.end method

.method public setInterrupter(Lcom/genonbeta/android/framework/util/Interrupter;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/Interrupter;",
            ")",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mInterrupter:Lcom/genonbeta/android/framework/util/Interrupter;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
            "TT;>;"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->mTitle:Ljava/lang/String;

    return-object p0
.end method
