.class public interface abstract Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;
.super Ljava/lang/Object;
.source "PowerfulActionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        "ReturningObject::",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getSelectableList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract onFinish(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TReturningObject;)V"
        }
    .end annotation
.end method

.method public abstract onItemChecked(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Lcom/genonbeta/android/framework/object/Selectable;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TReturningObject;TT;I)V"
        }
    .end annotation
.end method
