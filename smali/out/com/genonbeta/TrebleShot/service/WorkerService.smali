.class public Lcom/genonbeta/TrebleShot/service/WorkerService;
.super Lcom/genonbeta/TrebleShot/app/Service;
.source "WorkerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;,
        Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;,
        Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;
    }
.end annotation


# static fields
.field public static final ACTION_KILL_ALL_SIGNAL:Ljava/lang/String; = "com.genonbeta.intent.action.KILL_ALL_SIGNAL"

.field public static final ACTION_KILL_SIGNAL:Ljava/lang/String; = "com.genonbeta.intent.action.KILL_SIGNAL"

.field public static final EXTRA_TASK_HASH:Ljava/lang/String; = "extraTaskId"

.field public static final ID_NOTIFICATION_FOREGROUND:I = 0x44f

.field public static final REQUEST_CODE_RESCUE_TASK:I = 0x2a9e

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

.field private mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/service/WorkerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Service;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mTaskList:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;-><init>(Lcom/genonbeta/TrebleShot/service/WorkerService;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mBinder:Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;

    return-void
.end method

.method public static intentHash(Landroid/content/Intent;)I
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 61
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized findTaskByHash(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
    .registers 6

    monitor-enter p0

    .line 120
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 121
    :try_start_6
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    .line 122
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->hashCode()I

    move-result v3

    if-ne v3, p1, :cond_e

    .line 123
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_27

    monitor-exit p0

    return-object v2

    .line 124
    :cond_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_27

    const/4 p1, 0x0

    .line 126
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    .line 124
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    monitor-exit p0

    goto :goto_2e

    :goto_2d
    throw p1

    :goto_2e
    goto :goto_2d
.end method

.method public getTaskList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mTaskList:Ljava/util/List;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 77
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mBinder:Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 69
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Service;->onCreate()V

    .line 70
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 110
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Service;->onDestroy()V

    .line 112
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 113
    :try_start_8
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    .line 114
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt(Z)Z

    goto :goto_10

    .line 115
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    goto :goto_2b

    :goto_2a
    throw v1

    :goto_2b
    goto :goto_2a
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    if-eqz p1, :cond_76

    const-string p2, "com.genonbeta.intent.action.KILL_SIGNAL"

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    const-string p2, "extraTaskId"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_41

    const-string p2, "extraTaskId"

    const/4 p3, -0x1

    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->findTaskByHash(I)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 89
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result p3

    if-eqz p3, :cond_2e

    goto :goto_39

    .line 92
    :cond_2e
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    .line 93
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->onInterrupted()V

    goto :goto_76

    .line 90
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getNotificationUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    goto :goto_76

    :cond_41
    const-string p2, "com.genonbeta.intent.action.KILL_ALL_SIGNAL"

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 96
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 97
    :try_start_52
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_71

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    .line 98
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    .line 99
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->onInterrupted()V

    goto :goto_5a

    .line 101
    :cond_71
    monitor-exit p1

    goto :goto_76

    :catchall_73
    move-exception p2

    monitor-exit p1
    :try_end_75
    .catchall {:try_start_52 .. :try_end_75} :catchall_73

    throw p2

    :cond_76
    :goto_76
    const/4 p1, 0x1

    return p1
.end method

.method public publishForegroundNotification()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-nez v0, :cond_21

    .line 165
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    const-wide/16 v1, 0x44f

    const-string v3, "tsLowPriority"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const v1, 0x7f0700a3

    .line 167
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f11022d

    .line 168
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 171
    :cond_21
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const v1, 0x7f110258

    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v0, 0x44f

    .line 172
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public publishNotification(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 7

    .line 136
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    if-nez v0, :cond_75

    .line 137
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.genonbeta.intent.action.KILL_SIGNAL"

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->hashCode()I

    move-result v2

    const-string v3, "extraTaskId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 143
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "tsLowPriority"

    .line 142
    invoke-virtual {v1, v2, v3, v4}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$002(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Lcom/genonbeta/TrebleShot/util/DynamicNotification;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 145
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getIconRes()I

    move-result v2

    if-nez v2, :cond_44

    const v2, 0x7f0700a3

    goto :goto_48

    .line 147
    :cond_44
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getIconRes()I

    move-result v2

    .line 145
    :goto_48
    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f11022d

    .line 148
    invoke-virtual {p0, v2}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0700af

    const v3, 0x7f110027

    .line 150
    invoke-virtual {p0, v3}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {v1, v2, v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$100(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 153
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$100(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 156
    :cond_75
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->getStatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 159
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    return-void
.end method

.method protected declared-synchronized registerWork(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 4

    monitor-enter p0

    .line 177
    :try_start_1
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    .line 178
    :try_start_6
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_16

    .line 181
    :try_start_e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->publishForegroundNotification()V

    .line 182
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->publishNotification(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_19

    .line 183
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    .line 179
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/genonbeta/TrebleShot/service/WorkerService$1;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$1;-><init>(Lcom/genonbeta/TrebleShot/service/WorkerService;Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected declared-synchronized unregisterWork(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 4

    monitor-enter p0

    .line 205
    :try_start_1
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->access$000(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 207
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_28

    .line 208
    :try_start_d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getTaskList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_22

    const/4 p1, 0x1

    .line 211
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService;->stopForeground(Z)V

    .line 212
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_25

    .line 213
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    .line 212
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
