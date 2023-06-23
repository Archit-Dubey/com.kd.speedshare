.class public interface abstract Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$EngineCallback;
.super Ljava/lang/Object;
.source "PowerfulActionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EngineCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReturningObject::",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCheck(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;TT;ZI)Z"
        }
    .end annotation
.end method

.method public abstract onFinish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
.end method

.method public abstract onReload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
.end method

.method public abstract onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TReturningObject;"
        }
    .end annotation
.end method

.method public abstract onStart(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TReturningObject;>;Z)Z"
        }
    .end annotation
.end method
