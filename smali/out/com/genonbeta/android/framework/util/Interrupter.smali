.class public Lcom/genonbeta/android/framework/util/Interrupter;
.super Ljava/lang/Object;
.source "Interrupter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/util/Interrupter$Closer;
    }
.end annotation


# instance fields
.field private mClosers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/util/Interrupter$Closer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterrupted:Z

.field private mInterruptedByUser:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterrupted:Z

    .line 14
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterruptedByUser:Z

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mClosers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z
    .registers 4

    .line 19
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 20
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_f
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public getClosers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/android/framework/util/Interrupter$Closer;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mClosers:Ljava/util/List;

    return-object v0
.end method

.method public hasCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z
    .registers 4

    .line 26
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 27
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_f
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public interrupt()Z
    .registers 2

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt(Z)Z

    move-result v0

    return v0
.end method

.method public interrupt(Z)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 54
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterruptedByUser:Z

    .line 56
    :cond_5
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_d
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterrupted:Z

    .line 61
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_14
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/framework/util/Interrupter$Closer;

    .line 63
    invoke-interface {v3, p1}, Lcom/genonbeta/android/framework/util/Interrupter$Closer;->onClose(Z)V

    goto :goto_1c

    .line 64
    :cond_2c
    monitor-exit v1

    return v0

    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_2e

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method public interrupted()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterrupted:Z

    return v0
.end method

.method public interruptedByUser()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterruptedByUser:Z

    return v0
.end method

.method public removeCloser(Lcom/genonbeta/android/framework/util/Interrupter$Closer;)Z
    .registers 4

    .line 71
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 72
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_f
    move-exception p1

    .line 73
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public removeClosers()V
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_5
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->getClosers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lcom/genonbeta/android/framework/util/Interrupter;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterrupted:Z

    .line 84
    iput-boolean v0, p0, Lcom/genonbeta/android/framework/util/Interrupter;->mInterruptedByUser:Z

    if-eqz p1, :cond_a

    .line 87
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/util/Interrupter;->removeClosers()V

    :cond_a
    return-void
.end method
