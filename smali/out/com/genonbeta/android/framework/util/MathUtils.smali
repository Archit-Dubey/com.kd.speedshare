.class public Lcom/genonbeta/android/framework/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePercentage(JJ)I
    .registers 4

    long-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    long-to-float p0, p2

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static compare(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method
