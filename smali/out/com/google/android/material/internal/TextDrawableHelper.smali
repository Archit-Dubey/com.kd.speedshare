.class public Lcom/google/android/material/internal/TextDrawableHelper;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;
    }
.end annotation


# instance fields
.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private textAppearance:Lcom/google/android/material/resources/TextAppearance;

.field private final textPaint:Landroid/text/TextPaint;

.field private textWidth:F

.field private textWidthDirty:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 43
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper$1;-><init>(Lcom/google/android/material/internal/TextDrawableHelper;)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private calculateTextWidth(Ljava/lang/CharSequence;)F
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getTextWidth(Ljava/lang/String;)F
    .registers 3

    .line 92
    iget-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    if-nez v0, :cond_7

    .line 93
    iget p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    return p1

    .line 96
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->calculateTextWidth(Ljava/lang/CharSequence;)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    return p1
.end method

.method public isTextWidthDirty()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    return v0
.end method

.method public setDelegate(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eq v0, p1, :cond_3f

    .line 126
    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz p1, :cond_2b

    .line 128
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz v0, :cond_21

    .line 132
    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 134
    :cond_21
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    .line 138
    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p1, :cond_3f

    .line 140
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    .line 141
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onStateChange([I)Z

    :cond_3f
    return-void
.end method

.method public setTextWidthDirty(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidthDirty:Z

    return-void
.end method

.method public updateTextPaintDrawState(Landroid/content/Context;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    return-void
.end method
