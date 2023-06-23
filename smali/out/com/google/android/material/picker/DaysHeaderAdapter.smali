.class public Lcom/google/android/material/picker/DaysHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysHeaderAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I

.field private static final NARROW_FORMAT:I = 0x4


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    sput v0, Lcom/google/android/material/picker/DaysHeaderAdapter;->CALENDAR_DAY_STYLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    .line 51
    iget-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    return-void
.end method

.method private positionToDayOfWeek(I)I
    .registers 3

    .line 87
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    add-int/2addr p1, v0

    .line 88
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-le p1, v0, :cond_8

    sub-int/2addr p1, v0

    :cond_8
    return p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .registers 3

    .line 56
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-lt p1, v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->positionToDayOfWeek(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 75
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_e

    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    :cond_e
    iget-object p2, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->positionToDayOfWeek(I)I

    move-result p1

    const/4 p3, 0x7

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 80
    iget-object p1, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    sget p2, Lcom/google/android/material/picker/DaysHeaderAdapter;->CALENDAR_DAY_STYLE:I

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, p3, p2, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
