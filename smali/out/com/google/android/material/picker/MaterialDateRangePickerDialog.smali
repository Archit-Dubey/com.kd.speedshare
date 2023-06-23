.class public Lcom/google/android/material/picker/MaterialDateRangePickerDialog;
.super Lcom/google/android/material/picker/MaterialPickerDialog;
.source "MaterialDateRangePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialPickerDialog<",
        "Landroid/util/Pair<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final materialDateRangePicker:Lcom/google/android/material/picker/MaterialDateRangePickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 43
    sget v0, Lcom/google/android/material/R$attr;->materialDateRangePickerDialogTheme:I

    .line 44
    invoke-static {p1, v0, p2}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->getThemeResource(Landroid/content/Context;II)I

    move-result p2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/MaterialPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-direct {p2, p1}, Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->materialDateRangePicker:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    return-void
.end method


# virtual methods
.method protected getHeaderText()Ljava/lang/String;
    .registers 7

    .line 57
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->materialDateRangePicker:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getSelection()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_17

    .line 59
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_range_header_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$string;->mtrl_picker_range_header_selected:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "Landroid/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerDialog;->materialDateRangePicker:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    return-object v0
.end method
