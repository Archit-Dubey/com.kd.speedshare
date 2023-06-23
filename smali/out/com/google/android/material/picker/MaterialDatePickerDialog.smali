.class public Lcom/google/android/material/picker/MaterialDatePickerDialog;
.super Lcom/google/android/material/picker/MaterialPickerDialog;
.source "MaterialDatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialPickerDialog<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final materialDatePicker:Lcom/google/android/material/picker/MaterialDatePickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialDatePickerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 42
    sget v0, Lcom/google/android/material/R$attr;->materialDatePickerDialogTheme:I

    invoke-static {p1, v0, p2}, Lcom/google/android/material/picker/MaterialDatePickerDialog;->getThemeResource(Landroid/content/Context;II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/MaterialPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-direct {p2, p1}, Lcom/google/android/material/picker/MaterialDatePickerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialDatePickerDialog;->materialDatePicker:Lcom/google/android/material/picker/MaterialDatePickerView;

    return-void
.end method


# virtual methods
.method protected getHeaderText()Ljava/lang/String;
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDatePickerDialog;->materialDatePicker:Lcom/google/android/material/picker/MaterialDatePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialDatePickerView;->getSelection()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_17

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_header_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialog;->getSimpleDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_header_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDatePickerDialog;->materialDatePicker:Lcom/google/android/material/picker/MaterialDatePickerView;

    return-object v0
.end method
