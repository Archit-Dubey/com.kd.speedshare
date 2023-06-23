.class public abstract Lcom/genonbeta/TrebleShot/util/InterruptAwareJob;
.super Ljava/lang/Object;
.source "InterruptAwareJob.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onRun()V
.end method

.method protected run(Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/InterruptAwareJob;->onRun()V

    .line 17
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/Interrupter;->removeClosers()V

    return-void
.end method
