.class final Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cancellation"
.end annotation


# static fields
.field static final CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

.field static final CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;


# instance fields
.field final cause:Ljava/lang/Throwable;

.field final wasInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 239
    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 240
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    .line 241
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_1a

    .line 243
    :cond_a
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    .line 244
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    :goto_1a
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    .line 254
    iput-object p2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    return-void
.end method
