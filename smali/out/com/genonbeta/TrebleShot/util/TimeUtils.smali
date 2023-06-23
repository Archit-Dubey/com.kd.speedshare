.class public Lcom/genonbeta/TrebleShot/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateTime(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 4

    const/16 v0, 0x11

    .line 21
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDuration(J)Ljava/lang/String;
    .registers 14

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    new-instance v1, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;-><init>(J)V

    const-wide/16 p0, 0xe10

    .line 30
    invoke-virtual {v1, p0, p1}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide p0

    const-wide/16 v2, 0x3c

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->crop(J)J

    move-result-wide v2

    .line 32
    invoke-virtual {v1}, Lcom/genonbeta/android/framework/util/date/ElapsedTime$ElapsedTimeCalculator;->getLeftTime()J

    move-result-wide v4

    const-string v1, ":"

    const-string v6, "0"

    const-wide/16 v7, 0xa

    const-wide/16 v9, 0x0

    cmp-long v11, p0, v9

    if-lez v11, :cond_36

    cmp-long v9, p0, v7

    if-gez v9, :cond_30

    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_30
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    cmp-long p0, v2, v7

    if-gez p0, :cond_3d

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_3d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p0, v4, v7

    if-gez p0, :cond_4a

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_4a
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 11

    .line 58
    new-instance v0, Lcom/genonbeta/android/framework/util/date/ElapsedTime;

    invoke-direct {v0, p1, p2}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;-><init>(J)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getYears()J

    move-result-wide v1

    const/4 p2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2c

    const v1, 0x7f110259

    new-array v2, v3, [Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getYears()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2c
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getMonths()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-lez v6, :cond_4a

    const v1, 0x7f1101d7

    new-array v2, v3, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getMonths()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_4a
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getYears()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-nez v6, :cond_da

    .line 68
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getDays()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-lez v6, :cond_70

    const v1, 0x7f110177

    new-array v2, v3, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getDays()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_70
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getMonths()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-nez v6, :cond_da

    .line 72
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getHours()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-lez v6, :cond_96

    const v1, 0x7f1101b2

    new-array v2, v3, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getHours()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_96
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getDays()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-nez v6, :cond_da

    .line 76
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getMinutes()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-lez v6, :cond_bc

    const v1, 0x7f1101d6

    new-array v2, v3, [Ljava/lang/Object;

    .line 77
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getMinutes()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_bc
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getHours()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-nez v6, :cond_da

    const v1, 0x7f110215

    new-array v2, v3, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/date/ElapsedTime;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, p2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_da
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_fa

    const-string v0, " "

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_fa
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 95
    :cond_fe
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeAgo(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    long-to-int p1, v0

    if-nez p1, :cond_13

    const p1, 0x7f110233

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_2d

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f000b

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p2

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/16 v2, 0xe10

    if-ge p1, v2, :cond_46

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0f0009

    div-int/2addr p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-virtual {p0, v2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_46
    const p1, 0x7f1101d2

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
