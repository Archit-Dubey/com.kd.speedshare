.class public final Lcom/google/android/material/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 42
    sget v2, Lcom/google/android/material/R$attr;->colorPrimary:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    new-array v1, v0, [I

    .line 45
    sget v2, Lcom/google/android/material/R$attr;->colorPrimaryVariant:I

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/high16 v2, 0x1010000

    aput v2, v1, v3

    .line 48
    sget v2, Lcom/google/android/material/R$attr;->theme:I

    aput v2, v1, v0

    sput-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->ANDROID_THEME_OVERLAY_ATTRS:[I

    new-array v0, v0, [I

    .line 50
    sget v1, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_THEME_OVERLAY_ATTR:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .registers 3

    .line 211
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    const-string v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 127
    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    .line 128
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    sget p2, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 p3, 0x0

    .line 131
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 132
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_31

    .line 135
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$attr;->isMaterialTheme:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 139
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_31

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_31

    .line 143
    :cond_2e
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 146
    :cond_31
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .registers 3

    .line 215
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .registers 9

    .line 156
    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    .line 157
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    sget v1, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_13

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_13
    if-eqz p5, :cond_1e

    .line 169
    array-length v1, p5

    if-nez v1, :cond_19

    goto :goto_1e

    .line 178
    :cond_19
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result p0

    goto :goto_29

    .line 171
    :cond_1e
    :goto_1e
    sget p0, Lcom/google/android/material/R$styleable;->ThemeEnforcement_android_textAppearance:I

    const/4 p1, -0x1

    .line 172
    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, p1, :cond_28

    const/4 v2, 0x1

    :cond_28
    move p0, v2

    .line 182
    :goto_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p0, :cond_2f

    return-void

    .line 185
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .registers 4

    .line 239
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 240
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The style on this component requires your app theme to be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (or a descendant)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createThemedContext(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .registers 4

    .line 257
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p2

    if-eqz p2, :cond_26

    .line 258
    instance-of p3, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz p3, :cond_13

    move-object p3, p0

    check-cast p3, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 260
    invoke-virtual {p3}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result p3

    if-eq p3, p2, :cond_26

    .line 263
    :cond_13
    new-instance p3, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {p3, p0, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 267
    invoke-static {p3, p1}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p0

    if-eqz p0, :cond_25

    .line 269
    new-instance p1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {p1, p3, p0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, p1

    goto :goto_26

    :cond_25
    move-object p0, p3

    :cond_26
    :goto_26
    return-object p0
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .registers 2

    .line 219
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .registers 7

    .line 199
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 200
    array-length p1, p5

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_7
    if-ge p3, p1, :cond_19

    aget p4, p5, p3

    const/4 v0, -0x1

    .line 201
    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-ne p4, v0, :cond_16

    .line 202
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p2

    :cond_16
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 206
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .registers 2

    .line 223
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .registers 5

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 230
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 234
    :cond_16
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .registers 4

    .line 282
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->ANDROID_THEME_OVERLAY_ATTRS:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 285
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_16

    return v0

    :cond_16
    return p1
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .registers 5

    .line 300
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_THEME_OVERLAY_ATTR:[I

    .line 301
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 303
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 304
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .registers 6

    .line 78
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 84
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;
    .registers 6

    .line 116
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 119
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 122
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p0

    return-object p0
.end method
