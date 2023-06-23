.class public Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;
.super Ljava/lang/Object;
.source "ElapsedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/util/date/ElapsedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElapsedTimeCalculator"
.end annotation


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->mTime:J

    return-void
.end method


# virtual methods
.method public crop(J)J
    .registers 7

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->getLeftTime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_18

    .line 86
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->getLeftTime()J

    move-result-wide v0

    div-long/2addr v0, p1

    .line 87
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->getLeftTime()J

    move-result-wide v2

    mul-long p1, p1, v0

    sub-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->setTime(J)V

    goto :goto_1a

    :cond_18
    const-wide/16 v0, 0x0

    :goto_1a
    return-wide v0
.end method

.method public getLeftTime()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->mTime:J

    return-wide v0
.end method

.method public setTime(J)V
    .registers 3

    .line 100
    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->mTime:J

    return-void
.end method
