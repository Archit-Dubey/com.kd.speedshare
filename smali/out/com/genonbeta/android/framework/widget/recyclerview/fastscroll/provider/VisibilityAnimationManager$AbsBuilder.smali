.class public abstract Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mHideAnimatorResource:I

.field protected mHideDelay:I

.field protected mPivotX:F

.field protected mPivotY:F

.field protected mShowAnimatorResource:I

.field protected final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget v0, Lcom/genonbeta/android/framework/R$animator;->genfw_fastscroll_default_show:I

    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mShowAnimatorResource:I

    .line 93
    sget v0, Lcom/genonbeta/android/framework/R$animator;->genfw_fastscroll_default_hide:I

    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mHideAnimatorResource:I

    const/16 v0, 0x3e8

    .line 94
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mHideDelay:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 95
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mPivotX:F

    .line 96
    iput v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mPivotY:F

    .line 100
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withHideAnimator(I)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 111
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mHideAnimatorResource:I

    return-object p0
.end method

.method public withHideDelay(I)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 117
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mHideDelay:I

    return-object p0
.end method

.method public withPivotX(F)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 123
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mPivotX:F

    return-object p0
.end method

.method public withPivotY(F)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 129
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mPivotY:F

    return-object p0
.end method

.method public withShowAnimator(I)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 105
    iput p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/VisibilityAnimationManager$AbsBuilder;->mShowAnimatorResource:I

    return-object p0
.end method
