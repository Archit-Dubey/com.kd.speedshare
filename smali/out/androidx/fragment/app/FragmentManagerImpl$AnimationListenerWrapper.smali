.class Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationListenerWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .line 3326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3327
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 3341
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_7

    .line 3342
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    .line 3349
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_7

    .line 3350
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 3333
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_7

    .line 3334
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method
