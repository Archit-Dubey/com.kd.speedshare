.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 5

    .line 643
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 644
    sget v0, Landroidx/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 641
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    const/4 p2, 0x1

    .line 646
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 647
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 649
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 651
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 653
    new-instance p2, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {p2, p0, p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .registers 3

    .line 686
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method

.method protected setFrame(IIII)Z
    .registers 9

    .line 707
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    .line 710
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 711
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_3f

    if-eqz p3, :cond_3f

    .line 713
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result p2

    .line 714
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result p4

    .line 715
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 716
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 717
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr p2, v1

    .line 718
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v2

    .line 719
    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    sub-int v2, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    .line 720
    invoke-static {p3, v1, v2, p2, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_3f
    return p1
.end method
