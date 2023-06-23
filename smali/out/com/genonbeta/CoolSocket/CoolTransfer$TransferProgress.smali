.class public Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;
.super Ljava/lang/Object;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentTransferredByte:J

.field private mInterrupted:Z

.field private mLastNotified:J

.field private mStartTime:J

.field private mTimeElapsed:J

.field private mTimePassed:J

.field private mTimeRemaining:J

.field private mTotalByte:J

.field private mTransferredByte:J

.field private mTransferredFileCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mStartTime:J

    const/4 v0, 0x0

    .line 724
    iput-boolean v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mInterrupted:Z

    return-void
.end method


# virtual methods
.method public calculatePercentage(JJ)I
    .registers 5

    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p2, p1

    long-to-float p1, p3

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public decrementTransferredByte(J)J
    .registers 5

    .line 733
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mCurrentTransferredByte:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mCurrentTransferredByte:J

    .line 734
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredByte:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredByte:J

    return-wide v0
.end method

.method public decrementTransferredFileCount()I
    .registers 2

    .line 740
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredFileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredFileCount:I

    return v0
.end method

.method public doNotify(Lcom/genonbeta/CoolSocket/CoolTransfer;Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/CoolSocket/CoolTransfer<",
            "TT;>;",
            "Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler<",
            "TT;>;)Z"
        }
    .end annotation

    .line 746
    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getNotifyDelay()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getLastNotified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/genonbeta/CoolSocket/CoolTransfer;->getNotifyDelay()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1b

    const/4 p1, 0x0

    return p1

    .line 749
    :cond_1b
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTotalByte()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredByte()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->calculatePercentage(JJ)I

    move-result v0

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->setTimeElapsed(J)V

    .line 753
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTotalByte()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_63

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredByte()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_63

    .line 754
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTimeElapsed()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTotalByte()J

    move-result-wide v3

    mul-long v1, v1, v3

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredByte()J

    move-result-wide v3

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->setTimePassed(J)V

    .line 755
    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTimePassed()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTimeElapsed()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->setTimeRemaining(J)V

    .line 758
    :cond_63
    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/CoolSocket/CoolTransfer;->onNotify(Lcom/genonbeta/CoolSocket/CoolTransfer$TransferHandler;I)V

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mLastNotified:J

    const/4 p1, 0x1

    return p1
.end method

.method public getCurrentTransferredByte()J
    .registers 3

    .line 767
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mCurrentTransferredByte:J

    return-wide v0
.end method

.method public getLastNotified()J
    .registers 3

    .line 772
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mLastNotified:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 777
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mStartTime:J

    return-wide v0
.end method

.method public getTimeElapsed()J
    .registers 3

    .line 782
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTimeElapsed:J

    return-wide v0
.end method

.method public getTimePassed()J
    .registers 3

    .line 787
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTimePassed:J

    return-wide v0
.end method

.method public getTimeRemaining()J
    .registers 3

    .line 792
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTimeRemaining:J

    return-wide v0
.end method

.method public getTotalByte()J
    .registers 3

    .line 797
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTotalByte:J

    return-wide v0
.end method

.method public getTransferredByte()J
    .registers 3

    .line 807
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredByte:J

    return-wide v0
.end method

.method public getTransferredFileCount()I
    .registers 2

    .line 802
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredFileCount:I

    return v0
.end method

.method public incrementTransferredByte(J)J
    .registers 5

    .line 812
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mCurrentTransferredByte:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mCurrentTransferredByte:J

    .line 813
    iget-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredByte:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredByte:J

    return-wide v0
.end method

.method public incrementTransferredFileCount()I
    .registers 2

    .line 819
    iget v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredFileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredFileCount:I

    return v0
.end method

.method public interrupt()V
    .registers 2

    const/4 v0, 0x1

    .line 825
    iput-boolean v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mInterrupted:Z

    return-void
.end method

.method public isInterrupted()Z
    .registers 2

    .line 830
    iget-boolean v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mInterrupted:Z

    return v0
.end method

.method public resetCurrentTransferredByte()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 835
    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mCurrentTransferredByte:J

    return-void
.end method

.method public setStartTime(J)V
    .registers 3

    .line 855
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mStartTime:J

    return-void
.end method

.method public setTimeElapsed(J)V
    .registers 3

    .line 860
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTimeElapsed:J

    return-void
.end method

.method public setTimePassed(J)V
    .registers 3

    .line 865
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTimePassed:J

    return-void
.end method

.method public setTimeRemaining(J)V
    .registers 3

    .line 870
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTimeRemaining:J

    return-void
.end method

.method public setTotalByte(J)V
    .registers 3

    .line 840
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTotalByte:J

    return-void
.end method

.method public setTransferredByte(J)V
    .registers 3

    .line 845
    iput-wide p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredByte:J

    return-void
.end method

.method public setTransferredFileCount(I)V
    .registers 2

    .line 850
    iput p1, p0, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->mTransferredFileCount:I

    return-void
.end method
