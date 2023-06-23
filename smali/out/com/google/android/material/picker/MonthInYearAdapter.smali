.class public Lcom/google/android/material/picker/MonthInYearAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthInYearAdapter.java"


# static fields
.field private static final MAXIMUM_WEEKS:I


# instance fields
.field private final monthInYear:Lcom/google/android/material/picker/MonthInYear;

.field private final textViewSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/MonthInYear;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    .line 51
    sget p2, Lcom/google/android/material/R$attr;->minTouchTargetSize:I

    .line 52
    invoke-static {p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p2

    if-nez p2, :cond_1b

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    goto :goto_2a

    .line 57
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    :goto_2a
    return-void
.end method


# virtual methods
.method public firstPositionInMonth()I
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v0, v0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    sget v1, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    mul-int v0, v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/util/Calendar;
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1a

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_f

    goto :goto_1a

    .line 76
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->positionToDay(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/MonthInYear;->getDay(I)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v0, v0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 97
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_13

    .line 99
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    iget p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 102
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->firstPositionInMonth()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2f

    .line 103
    iget-object p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p2, p2, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    if-lt p1, p2, :cond_21

    goto :goto_2f

    :cond_21
    add-int/lit8 p1, p1, 0x1

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    :cond_2f
    :goto_2f
    const/4 p1, 0x4

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_33
    return-object v0
.end method

.method public lastPositionInMonth()I
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v1, v1, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public positionToDay(I)I
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public withinMonth(I)Z
    .registers 3

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->lastPositionInMonth()I

    move-result v0

    if-gt p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
