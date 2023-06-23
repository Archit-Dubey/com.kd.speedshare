.class Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "SimpleFastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 609
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 610
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    iget-object v0, v0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 611
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    iget-object v0, v0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 612
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$AnimatorUpdater;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->requestRedraw()V

    return-void
.end method
