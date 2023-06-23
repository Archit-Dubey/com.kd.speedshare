.class public Lcom/genonbeta/android/framework/util/date/ElapsedTime;
.super Ljava/lang/Object;
.source "ElapsedTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;
    }
.end annotation


# instance fields
.field private mDays:J

.field private mElapsedTime:J

.field private mHours:J

.field private mMinutes:J

.field private mMonths:J

.field private mSeconds:J

.field private mYears:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->set(J)V

    return-void
.end method


# virtual methods
.method public getDays()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mDays:J

    return-wide v0
.end method

.method public getElapsedTime()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mElapsedTime:J

    return-wide v0
.end method

.method public getHours()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mHours:J

    return-wide v0
.end method

.method public getMinutes()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mMinutes:J

    return-wide v0
.end method

.method public getMonths()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mMonths:J

    return-wide v0
.end method

.method public getSeconds()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mSeconds:J

    return-wide v0
.end method

.method public getYears()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mYears:J

    return-wide v0
.end method

.method public set(J)V
    .registers 6

    .line 60
    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mElapsedTime:J

    .line 62
    new-instance v0, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;-><init>(J)V

    const-wide/32 p1, 0x3b53800

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mYears:J

    const-wide/32 p1, 0x278d00

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mMonths:J

    const-wide/32 p1, 0x15180

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mDays:J

    const-wide/16 p1, 0xe10

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mHours:J

    const-wide/16 p1, 0x3c

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mMinutes:J

    .line 69
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->getLeftTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->mSeconds:J

    return-void
.end method
