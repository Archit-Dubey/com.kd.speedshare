.class public Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "MaterialStyledDatePickerDialog.java"


# static fields
.field private static final DEF_STYLE_ATTR:I = 0x101035c

.field private static final DEF_STYLE_RES:I


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private final backgroundInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    sget v0, Lcom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner:I

    sput v0, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 7

    .line 84
    invoke-direct/range {p0 .. p6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    .line 88
    invoke-static {p2, p3, p4}, Lcom/google/android/material/resources/MaterialAttributes;->resolveAttributeOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object p2

    .line 90
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 92
    new-instance p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget p4, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    const/4 p5, 0x0

    const p6, 0x101035c

    invoke-direct {p3, p1, p5, p6, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x15

    if-lt p4, p5, :cond_34

    .line 96
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3c

    :cond_34
    const/4 p2, 0x0

    .line 98
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 101
    :goto_3c
    sget p2, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    .line 102
    invoke-static {p1, p6, p2}, Lcom/google/android/material/dialog/MaterialDialogs;->getDialogBackgroundInsets(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->backgroundInsets:Landroid/graphics/Rect;

    .line 103
    invoke-static {p3, p1}, Lcom/google/android/material/dialog/MaterialDialogs;->insetDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 108
    invoke-super {p0, p1}, Landroid/app/DatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    iget-object v1, p0, Lcom/google/android/material/picker/MaterialStyledDatePickerDialog;->backgroundInsets:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/AlertDialog;Landroid/graphics/Rect;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
