.class public final Lcom/google/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private onBattery:Z

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 45
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/zxing/client/android/InactivityTimer;->callback:Ljava/lang/Runnable;

    .line 48
    new-instance p1, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/InactivityTimer;Z)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer;->onBattery(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelCallback()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private onBattery(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->onBattery:Z

    .line 107
    iget-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    if-eqz p1, :cond_9

    .line 109
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->activity()V

    :cond_9
    return-void
.end method

.method private registerReceiver()V
    .registers 5

    .line 91
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    if-nez v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    :cond_15
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .line 83
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    if-eqz v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    :cond_e
    return-void
.end method


# virtual methods
.method public activity()V
    .registers 5

    .line 57
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancelCallback()V

    .line 58
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->onBattery:Z

    if-eqz v0, :cond_11

    .line 59
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->callback:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method public cancel()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancelCallback()V

    .line 78
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->unregisterReceiver()V

    return-void
.end method

.method public start()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->registerReceiver()V

    .line 69
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->activity()V

    return-void
.end method
