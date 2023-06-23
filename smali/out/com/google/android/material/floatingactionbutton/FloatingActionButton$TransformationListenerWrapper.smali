.class Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransformationListenerWrapper"
.end annotation


# instance fields
.field private final listener:Lcom/google/android/material/animation/TransformationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/animation/TransformationListener<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/animation/TransformationListener<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1353
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1369
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    .line 1370
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1375
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onScaleChanged()V
    .registers 3

    .line 1364
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lcom/google/android/material/animation/TransformationListener;->onScaleChanged(Landroid/view/View;)V

    return-void
.end method

.method public onTranslationChanged()V
    .registers 3

    .line 1359
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->listener:Lcom/google/android/material/animation/TransformationListener;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationListenerWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lcom/google/android/material/animation/TransformationListener;->onTranslationChanged(Landroid/view/View;)V

    return-void
.end method
