.class final Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;
.super Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1139
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture$1;)V

    return-void
.end method


# virtual methods
.method casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1165
    monitor-enter p1

    .line 1166
    :try_start_1
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-ne v0, p2, :cond_a

    .line 1167
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    const/4 p2, 0x1

    .line 1168
    monitor-exit p1

    return p2

    :cond_a
    const/4 p2, 0x0

    .line 1170
    monitor-exit p1

    return p2

    :catchall_d
    move-exception p2

    .line 1171
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1176
    monitor-enter p1

    .line 1177
    :try_start_1
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_a

    .line 1178
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1179
    monitor-exit p1

    return p2

    :cond_a
    const/4 p2, 0x0

    .line 1181
    monitor-exit p1

    return p2

    :catchall_d
    move-exception p2

    .line 1182
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1154
    monitor-enter p1

    .line 1155
    :try_start_1
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v0, p2, :cond_a

    .line 1156
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const/4 p2, 0x1

    .line 1157
    monitor-exit p1

    return p2

    :cond_a
    const/4 p2, 0x0

    .line 1159
    monitor-exit p1

    return p2

    :catchall_d
    move-exception p2

    .line 1160
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method putNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V
    .registers 3

    .line 1149
    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    return-void
.end method

.method putThread(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Ljava/lang/Thread;)V
    .registers 3

    .line 1144
    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    return-void
.end method
