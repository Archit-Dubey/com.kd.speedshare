.class public Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CircularRevealLinearLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public actualIsOpaque()Z
    .registers 2

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_8

    .line 85
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 87
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_b
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_9

    .line 99
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 101
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
