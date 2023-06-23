.class public Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;
.super Ljava/lang/Object;
.source "NetworkDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;,
        Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;,
        Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;
    }
.end annotation


# instance fields
.field private mExecutor:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;

.field private mHandler:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

.field private mInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/util/AddressedInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBreakRequested:Z

.field private mIsLockRequested:Z

.field private mNumberOfThreads:I

.field private mScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mInterfaces:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;-><init>(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mExecutor:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;

    .line 13
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;-><init>(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsBreakRequested:Z

    .line 15
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsLockRequested:Z

    const/4 v0, 0x6

    .line 17
    iput v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mNumberOfThreads:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mInterfaces:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;-><init>(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mExecutor:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;

    .line 13
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;-><init>(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsBreakRequested:Z

    .line 15
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsLockRequested:Z

    const/4 v0, 0x6

    .line 17
    iput v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mNumberOfThreads:I

    .line 25
    iput p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mNumberOfThreads:I

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mInterfaces:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)I
    .registers 1

    .line 9
    iget p0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mNumberOfThreads:I

    return p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsBreakRequested:Z

    return p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mHandler:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->nextThread()V

    return-void
.end method

.method private nextThread()V
    .registers 4

    .line 45
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsLockRequested:Z

    if-eqz v0, :cond_5

    return-void

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->isScannerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsBreakRequested:Z

    .line 53
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mHandler:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->setLock(Z)V

    .line 55
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mHandler:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

    invoke-interface {v1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;->onThreadsCompleted()V

    .line 56
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->setLock(Z)V

    :cond_1e
    return-void

    .line 62
    :cond_1f
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->updateScanner()V

    .line 64
    iget v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mNumberOfThreads:I

    :goto_26
    if-lez v0, :cond_32

    .line 65
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mExecutor:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mScanner:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;

    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_32
    return-void
.end method


# virtual methods
.method public interrupt()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsBreakRequested:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsBreakRequested:Z

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isScannerAvailable()Z
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsLockRequested:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public scan(Ljava/util/List;Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/util/AddressedInterface;",
            ">;",
            "Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;",
            ")Z"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->isScannerAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    goto :goto_19

    .line 74
    :cond_e
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mInterfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mHandler:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

    .line 77
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->nextThread()V

    return v1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public setLock(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->mIsLockRequested:Z

    return-void
.end method
