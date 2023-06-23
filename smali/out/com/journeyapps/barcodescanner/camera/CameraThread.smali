.class Lcom/journeyapps/barcodescanner/camera/CameraThread;
.super Ljava/lang/Object;
.source "CameraThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private openCount:I

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    return-void
.end method

.method private checkRunning()V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    if-nez v1, :cond_2d

    .line 69
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    if-lez v1, :cond_25

    .line 72
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 73
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    goto :goto_2d

    .line 70
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CameraThread is not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static getInstance()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .registers 1

    .line 28
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;-><init>()V

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 31
    :cond_b
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object v0
.end method

.method private quit()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 87
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 88
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method protected decrementInstances()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    if-nez v1, :cond_e

    .line 99
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->quit()V

    .line 101
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected enqueue(Ljava/lang/Runnable;)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->checkRunning()V

    .line 45
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected enqueueDelayed(Ljava/lang/Runnable;J)V
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->checkRunning()V

    .line 61
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected incrementAndEnqueue(Ljava/lang/Runnable;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 113
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 114
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
