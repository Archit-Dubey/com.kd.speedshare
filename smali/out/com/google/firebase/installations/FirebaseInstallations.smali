.class public Lcom/google/firebase/installations/FirebaseInstallations;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Lcom/google/firebase/installations/FirebaseInstallationsApi;


# static fields
.field private static final CHIME_FIREBASE_APP_NAME:Ljava/lang/String; = "CHIME_ANDROID_SDK"

.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEEP_ALIVE_TIME_IN_SECONDS:J = 0x1eL

.field private static final LOCKFILE_NAME_GENERATE_FID:Ljava/lang/String; = "generatefid.lock"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final lockGenerateFid:Ljava/lang/Object;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private cachedFid:Ljava/lang/String;

.field private final fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final iidStore:Lcom/google/firebase/installations/local/IidStore;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final networkExecutor:Ljava/util/concurrent/ExecutorService;

.field private final persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

.field private final serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

.field private final utils:Lcom/google/firebase/installations/Utils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$1;

    invoke-direct {v0}, Lcom/google/firebase/installations/FirebaseInstallations$1;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;)V
    .registers 13

    .line 102
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 112
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;-><init>(Landroid/content/Context;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;)V

    new-instance v4, Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-direct {v4, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;-><init>(Lcom/google/firebase/FirebaseApp;)V

    new-instance v5, Lcom/google/firebase/installations/Utils;

    invoke-direct {v5}, Lcom/google/firebase/installations/Utils;-><init>()V

    new-instance v6, Lcom/google/firebase/installations/local/IidStore;

    invoke-direct {v6, p1}, Lcom/google/firebase/installations/local/IidStore;-><init>(Lcom/google/firebase/FirebaseApp;)V

    new-instance v7, Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-direct {v7}, Lcom/google/firebase/installations/RandomFidGenerator;-><init>()V

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    .line 102
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/installations/FirebaseInstallations;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/installations/local/IidStore;Lcom/google/firebase/installations/RandomFidGenerator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/installations/local/IidStore;Lcom/google/firebase/installations/RandomFidGenerator;)V
    .registers 18

    move-object v0, p0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 72
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    move-object v1, p2

    .line 127
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    move-object v1, p3

    .line 128
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    move-object v1, p4

    .line 129
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    move-object v1, p5

    .line 130
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    move-object/from16 v1, p6

    .line 131
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/installations/local/IidStore;

    move-object/from16 v1, p7

    .line 132
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    move-object v1, p1

    .line 133
    iput-object v1, v0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 134
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, v0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->deleteFirebaseInstallationId()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 256
    new-instance v1, Lcom/google/firebase/installations/GetAuthTokenListener;

    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/GetAuthTokenListener;-><init>(Lcom/google/firebase/installations/Utils;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 257
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_f
    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 260
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :catchall_1a
    move-exception v0

    .line 259
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private deleteFirebaseInstallationId()Ljava/lang/Void;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;

    .line 520
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 524
    :try_start_d
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 525
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v4

    .line 527
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/google/firebase/FirebaseException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_2d

    .line 531
    :catch_23
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    const-string v2, "Failed to delete a Firebase Installation."

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    .line 535
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    return-object v0
.end method

.method private doGetAuthToken(Z)V
    .registers 3

    .line 310
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    if-eqz p1, :cond_a

    .line 315
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withClearedAuthToken()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 318
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 321
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/installations/FirebaseInstallations;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doGetId()Ljava/lang/String;
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 293
    :cond_5
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doNetworkCallIfNecessary(Z)V
    .registers 4

    .line 325
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 330
    :try_start_4
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isUnregistered()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_22

    :cond_11
    if-nez p1, :cond_1d

    .line 332
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/Utils;->isAuthTokenExpired(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return-void

    .line 333
    :cond_1d
    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    goto :goto_26

    .line 331
    :cond_22
    :goto_22
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_5b

    .line 344
    :goto_26
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 347
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 348
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;

    .line 352
    :cond_35
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 353
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Ljava/lang/Exception;)V

    goto :goto_5a

    .line 354
    :cond_46
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 357
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cleared fid due to auth error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Ljava/lang/Exception;)V

    goto :goto_5a

    .line 359
    :cond_57
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    :goto_5a
    return-void

    :catch_5b
    move-exception p1

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Ljava/lang/Exception;)V

    return-void
.end method

.method private fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 491
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$2;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_40

    const/4 v0, 0x2

    if-eq v1, v0, :cond_39

    const/4 v0, 0x3

    if-ne v1, v0, :cond_33

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1

    .line 510
    :cond_33
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_39
    const-string v0, "BAD CONFIG"

    .line 503
    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1

    .line 499
    :cond_40
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 501
    invoke-virtual {v0}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v4

    move-object v0, p1

    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withAuthToken(Ljava/lang/String;JJ)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/google/firebase/installations/FirebaseInstallations;
    .registers 1

    .line 178
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;
    .registers 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Null is not a valid value of FirebaseApp."

    .line 190
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 191
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/FirebaseInstallations;

    return-object p0
.end method

.method private getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 4

    .line 547
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 549
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 551
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 552
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1c

    if-eqz v1, :cond_1a

    .line 560
    :try_start_17
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    :cond_1a
    monitor-exit v0

    return-object v2

    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 562
    :cond_22
    throw v2

    :catchall_23
    move-exception v1

    .line 563
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 6

    .line 400
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 402
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_37

    .line 404
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 405
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 413
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;

    move-result-object v3

    .line 414
    iget-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 416
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withUnregisteredFid(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    .line 415
    invoke-virtual {v4, v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_30

    :cond_29
    if-eqz v1, :cond_2e

    .line 425
    :try_start_2b
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    :cond_2e
    monitor-exit v0

    return-object v2

    :catchall_30
    move-exception v2

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 427
    :cond_36
    throw v2

    :catchall_37
    move-exception v1

    .line 428
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    throw v1
.end method

.method private insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .registers 5

    .line 369
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 371
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_22

    .line 374
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {v2, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    if-eqz v1, :cond_19

    .line 380
    :try_start_16
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 383
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    if-eqz v1, :cond_21

    .line 380
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 382
    :cond_21
    throw p1

    :catchall_22
    move-exception p1

    .line 383
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method static synthetic lambda$doGetAuthToken$2(Lcom/google/firebase/installations/FirebaseInstallations;Z)V
    .registers 2

    .line 321
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doNetworkCallIfNecessary(Z)V

    return-void
.end method

.method static synthetic lambda$doGetId$1(Lcom/google/firebase/installations/FirebaseInstallations;)V
    .registers 2

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->doNetworkCallIfNecessary(Z)V

    return-void
.end method

.method static synthetic lambda$getToken$0(Lcom/google/firebase/installations/FirebaseInstallations;Z)V
    .registers 2

    .line 238
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doGetAuthToken(Z)V

    return-void
.end method

.method private preConditionChecks()V
    .registers 3

    .line 150
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 153
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 158
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 434
    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->shouldAttemptMigration()Z

    move-result p1

    if-nez p1, :cond_23

    .line 435
    :cond_1c
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {p1}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 438
    :cond_23
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/installations/local/IidStore;

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/IidStore;->readIid()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 440
    iget-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {p1}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object p1

    :cond_35
    return-object p1
.end method

.method private registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_13

    .line 455
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/installations/local/IidStore;

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/IidStore;->readToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move-object v6, v0

    .line 458
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 460
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v0

    .line 466
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$2;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    const/4 v0, 0x2

    if-ne v1, v0, :cond_44

    const-string v0, "BAD CONFIG"

    .line 475
    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1

    .line 477
    :cond_44
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 469
    :cond_4a
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getFid()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 471
    invoke-virtual {v3}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v3

    .line 472
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v6

    move-object v0, p1

    .line 468
    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withRegisteredFid(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object p1

    return-object p1
.end method

.method private triggerOnException(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Ljava/lang/Exception;)V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 279
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 281
    invoke-interface {v2, p1, p2}, Lcom/google/firebase/installations/StateListener;->onException(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 286
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 268
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 273
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method


# virtual methods
.method public delete()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method getApiKey()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 220
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 221
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->doGetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProjectIdentifier()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Z)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 237
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/installations/FirebaseInstallations;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
