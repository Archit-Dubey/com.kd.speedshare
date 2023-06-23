.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private final isCrossFadeEnabled:Z

.field private resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;


# direct methods
.method protected constructor <init>(IZ)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    .line 25
    iput-boolean p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    return-void
.end method

.method private getResourceTransition()Lcom/bumptech/glide/request/transition/Transition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_f

    .line 36
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;-><init>(IZ)V

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 38
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, p2, :cond_9

    .line 31
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->getResourceTransition()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    :goto_d
    return-object p1
.end method