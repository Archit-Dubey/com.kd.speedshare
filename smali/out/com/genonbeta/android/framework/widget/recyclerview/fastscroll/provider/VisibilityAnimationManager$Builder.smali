.class public Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;
.super Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder<",
        "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 140
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;
    .registers 9

    .line 145
    new-instance v7, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->mView:Landroid/view/View;

    iget v2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->mShowAnimatorResource:I

    iget v3, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->mHideAnimatorResource:I

    iget v4, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->mPivotX:F

    iget v5, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->mPivotY:F

    iget v6, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$Builder;->mHideDelay:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;-><init>(Landroid/view/View;IIFFI)V

    return-object v7
.end method
