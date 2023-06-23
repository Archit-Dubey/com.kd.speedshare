.class public abstract Lcom/google/android/material/picker/MaterialPickerDialog;
.super Landroid/app/Dialog;
.source "MaterialPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Dialog;"
    }
.end annotation


# instance fields
.field private header:Landroid/widget/TextView;

.field private materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialPickerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "MMM dd, yyyy"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialPickerDialog;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialog;->updateHeader()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialPickerDialog;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->selection:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialPickerDialog;)Lcom/google/android/material/picker/MaterialCalendarView;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object p0
.end method

.method protected static final getThemeResource(Landroid/content/Context;II)I
    .registers 4

    if-eqz p2, :cond_3

    return p2

    .line 57
    :cond_3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget p0, p2, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method private updateHeader()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialog;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected abstract getHeaderText()Ljava/lang/String;
.end method

.method protected abstract getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end method

.method public final getSelection()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->selection:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialog;->getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    .line 84
    sget p1, Lcom/google/android/material/R$layout;->mtrl_date_picker_dialog:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->setContentView(I)V

    .line 85
    sget p1, Lcom/google/android/material/R$id;->date_picker_header_title:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->header:Landroid/widget/TextView;

    .line 86
    sget p1, Lcom/google/android/material/R$id;->date_picker_calendar_view_frame:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 87
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    new-instance v0, Lcom/google/android/material/picker/MaterialPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialPickerDialog$1;-><init>(Lcom/google/android/material/picker/MaterialPickerDialog;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/MaterialCalendarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget p1, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 97
    sget v0, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/MaterialPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    new-instance v1, Lcom/google/android/material/picker/MaterialPickerDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/MaterialPickerDialog$2;-><init>(Lcom/google/android/material/picker/MaterialPickerDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance p1, Lcom/google/android/material/picker/MaterialPickerDialog$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/picker/MaterialPickerDialog$3;-><init>(Lcom/google/android/material/picker/MaterialPickerDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialog;->updateHeader()V

    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialog;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method
