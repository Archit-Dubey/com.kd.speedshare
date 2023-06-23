.class public final Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"


# static fields
.field private static final AUTO_FOCUS_INTERVAL_MS:J = 0x7d0L

.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private MESSAGE_FOCUS:I

.field private final autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final camera:Landroid/hardware/Camera;

.field private final focusHandlerCallback:Landroid/os/Handler$Callback;

.field private focusing:Z

.field private handler:Landroid/os/Handler;

.field private stopped:Z

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-class v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "auto"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    .line 51
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 67
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusHandlerCallback:Landroid/os/Handler$Callback;

    .line 82
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 84
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isAutoFocusEnabled()Z

    move-result p2

    if-eqz p2, :cond_36

    sget-object p2, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    .line 86
    sget-object p2, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current focus mode \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; use auto focus? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusAgainLater()V

    return-void
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    return p0
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focus()V

    return-void
.end method

.method private declared-synchronized autoFocusAgainLater()V
    .registers 5

    monitor-enter p0

    .line 92
    :try_start_1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 93
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 95
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelOutstandingTask()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private focus()V
    .registers 4

    .line 108
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_22

    .line 109
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z

    if-nez v0, :cond_22

    .line 111
    :try_start_c
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_22

    :catch_17
    move-exception v0

    .line 115
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusAgainLater()V

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public start()V
    .registers 2

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    .line 103
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focus()V

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z

    .line 135
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->cancelOutstandingTask()V

    .line 136
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_1b

    .line 139
    :try_start_d
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 142
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    return-void
.end method
