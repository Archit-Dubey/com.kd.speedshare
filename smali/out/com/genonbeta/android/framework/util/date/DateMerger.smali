.class public Lcom/genonbeta/android/framework/util/date/DateMerger;
.super Lcom/genonbeta/android/framework/util/listing/ComparableMerger;
.source "DateMerger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDay:I

.field private mDayOfYear:I

.field private mMonth:I

.field private mTime:J

.field private mYear:I


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 25
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 30
    iput-wide p1, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mTime:J

    const/4 p1, 0x1

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mYear:I

    const/4 p1, 0x2

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mMonth:I

    const/4 p1, 0x5

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mDay:I

    const/4 p1, 0x6

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mDayOfYear:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/util/listing/ComparableMerger<",
            "TT;>;)I"
        }
    .end annotation

    .line 40
    instance-of v0, p1, Lcom/genonbeta/android/framework/util/date/DateMerger;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 43
    :cond_6
    check-cast p1, Lcom/genonbeta/android/framework/util/date/DateMerger;

    .line 45
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getYear()I

    move-result v2

    if-ge v0, v2, :cond_13

    return v1

    .line 47
    :cond_13
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getYear()I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_1f

    return v3

    .line 49
    :cond_1f
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getDayOfYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getDayOfYear()I

    move-result v2

    if-ne v0, v2, :cond_2b

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_2b
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getDayOfYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getDayOfYear()I

    move-result p1

    if-ge v0, p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x1

    :goto_37
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 15
    check-cast p1, Lcom/genonbeta/android/framework/util/listing/ComparableMerger;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->compareTo(Lcom/genonbeta/android/framework/util/listing/ComparableMerger;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 58
    instance-of v0, p1, Lcom/genonbeta/android/framework/util/date/DateMerger;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 61
    :cond_6
    check-cast p1, Lcom/genonbeta/android/framework/util/date/DateMerger;

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getYear()I

    move-result v2

    if-ne v0, v2, :cond_27

    .line 64
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getMonth()I

    move-result v2

    if-ne v0, v2, :cond_27

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getDay()I

    move-result v0

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/date/DateMerger;->getDay()I

    move-result p1

    if-ne v0, p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public getDay()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mDay:I

    return v0
.end method

.method public getDayOfYear()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mDayOfYear:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mMonth:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mTime:J

    return-wide v0
.end method

.method public getYear()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/genonbeta/android/framework/util/date/DateMerger;->mYear:I

    return v0
.end method
