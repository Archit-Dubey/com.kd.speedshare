.class public final Lcom/google/android/gms/internal/ads/zzdgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcxn<",
        "Lcom/google/android/gms/internal/ads/zzbmw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzflp:Ljava/util/concurrent/Executor;

.field private final zzfng:Landroid/view/ViewGroup;

.field private final zzgow:Lcom/google/android/gms/internal/ads/zzdlc;

.field private zzgph:Lcom/google/android/gms/internal/ads/zzdvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "Lcom/google/android/gms/internal/ads/zzbmw;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzgqt:Lcom/google/android/gms/internal/ads/zzbif;

.field private final zzgwa:Landroid/content/Context;

.field private final zzgwb:Lcom/google/android/gms/internal/ads/zzdhi;

.field private final zzgwc:Lcom/google/android/gms/internal/ads/zzdil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdil<",
            "Lcom/google/android/gms/internal/ads/zzbmq;",
            "Lcom/google/android/gms/internal/ads/zzbmw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbif;Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzdlc;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzbif;",
            "Lcom/google/android/gms/internal/ads/zzdil<",
            "Lcom/google/android/gms/internal/ads/zzbmq;",
            "Lcom/google/android/gms/internal/ads/zzbmw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdhi;",
            "Lcom/google/android/gms/internal/ads/zzdlc;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwa:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzflp:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgqt:Lcom/google/android/gms/internal/ads/zzbif;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwc:Lcom/google/android/gms/internal/ads/zzdil;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwb:Lcom/google/android/gms/internal/ads/zzdhi;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgow:Lcom/google/android/gms/internal/ads/zzdlc;

    .line 8
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzfng:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgr;Lcom/google/android/gms/internal/ads/zzdio;)Lcom/google/android/gms/internal/ads/zzbmt;
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgr;->zza(Lcom/google/android/gms/internal/ads/zzdio;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdio;)Lcom/google/android/gms/internal/ads/zzbmt;
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgy;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcxl:Lcom/google/android/gms/internal/ads/zzaag;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgqt:Lcom/google/android/gms/internal/ads/zzbif;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbif;->zzadm()Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzfng:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbnb;-><init>(Landroid/view/ViewGroup;)V

    .line 36
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmt;->zza(Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrx$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbrx$zza;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwa:Landroid/content/Context;

    .line 37
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbrx$zza;->zzce(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbrx$zza;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdgy;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    .line 38
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbrx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdla;)Lcom/google/android/gms/internal/ads/zzbrx$zza;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrx$zza;->zzaiz()Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object p1

    .line 40
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmt;->zzb(Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxa$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxa$zza;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxa$zza;->zzajw()Lcom/google/android/gms/internal/ads/zzbxa;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbmt;->zzb(Lcom/google/android/gms/internal/ads/zzbxa;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object p1
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_9a

    .line 42
    monitor-exit p0

    return-object p1

    .line 43
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwb:Lcom/google/android/gms/internal/ads/zzdhi;

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhi;->zzb(Lcom/google/android/gms/internal/ads/zzdhi;)Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxa$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbxa$zza;-><init>()V

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzflp:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbxa$zza;->zza(Lcom/google/android/gms/internal/ads/zzbsq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbxa$zza;

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzflp:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbxa$zza;->zza(Lcom/google/android/gms/internal/ads/zzbuf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbxa$zza;

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbxa$zza;->zza(Lcom/google/android/gms/internal/ads/zzdim;)Lcom/google/android/gms/internal/ads/zzbxa$zza;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgqt:Lcom/google/android/gms/internal/ads/zzbif;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbif;->zzadm()Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbnb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzfng:Landroid/view/ViewGroup;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbnb;-><init>(Landroid/view/ViewGroup;)V

    .line 51
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbmt;->zza(Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrx$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbrx$zza;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwa:Landroid/content/Context;

    .line 52
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbrx$zza;->zzce(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbrx$zza;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdgy;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    .line 53
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbrx$zza;->zza(Lcom/google/android/gms/internal/ads/zzdla;)Lcom/google/android/gms/internal/ads/zzbrx$zza;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrx$zza;->zzaiz()Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object p1

    .line 55
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmt;->zzb(Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object p1

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbxa$zza;->zzajw()Lcom/google/android/gms/internal/ads/zzbxa;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbmt;->zzb(Lcom/google/android/gms/internal/ads/zzbxa;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object p1
    :try_end_98
    .catchall {:try_start_4e .. :try_end_98} :catchall_9a

    .line 57
    monitor-exit p0

    return-object p1

    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgr;)Lcom/google/android/gms/internal/ads/zzdhi;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwb:Lcom/google/android/gms/internal/ads/zzdhi;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgr;Lcom/google/android/gms/internal/ads/zzdvf;)Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 2

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgph:Lcom/google/android/gms/internal/ads/zzdvf;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdgr;)Lcom/google/android/gms/internal/ads/zzdil;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwc:Lcom/google/android/gms/internal/ads/zzdil;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdgr;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzflp:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final isLoading()Z
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgph:Lcom/google/android/gms/internal/ads/zzdvf;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdvf;->isDone()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgow:Lcom/google/android/gms/internal/ads/zzdlc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlc;->zzb(Lcom/google/android/gms/internal/ads/zzvo;)Lcom/google/android/gms/internal/ads/zzdlc;

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcxp;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzve;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            "Lcom/google/android/gms/internal/ads/zzcxp<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbmw;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string p3, "loadAd must be called on the main UI thread."

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_1a

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzflp:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdgu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Lcom/google/android/gms/internal/ads/zzdgr;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_64

    .line 15
    monitor-exit p0

    return p3

    .line 16
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgph:Lcom/google/android/gms/internal/ads/zzdvf;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_64

    if-eqz v0, :cond_20

    .line 17
    monitor-exit p0

    return p3

    .line 18
    :cond_20
    :try_start_20
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwa:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzve;->zzcgv:Z

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdlj;->zze(Landroid/content/Context;Z)V

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgow:Lcom/google/android/gms/internal/ads/zzdlc;

    .line 20
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzdlc;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvh;->zzpj()Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzdlc;->zzd(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdlc;->zzh(Lcom/google/android/gms/internal/ads/zzve;)Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlc;->zzaso()Lcom/google/android/gms/internal/ads/zzdla;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdgy;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzdgy;-><init>(Lcom/google/android/gms/internal/ads/zzdgw;)V

    .line 25
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzdgy;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwc:Lcom/google/android/gms/internal/ads/zzdil;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdiq;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzdiq;-><init>(Lcom/google/android/gms/internal/ads/zzdio;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgt;-><init>(Lcom/google/android/gms/internal/ads/zzdgr;)V

    .line 27
    invoke-interface {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdin;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgph:Lcom/google/android/gms/internal/ads/zzdvf;

    .line 28
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdgw;

    invoke-direct {p3, p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzdgw;-><init>(Lcom/google/android/gms/internal/ads/zzdgr;Lcom/google/android/gms/internal/ads/zzcxp;Lcom/google/android/gms/internal/ads/zzdgy;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzflp:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdux;->zza(Lcom/google/android/gms/internal/ads/zzdvf;Lcom/google/android/gms/internal/ads/zzduu;Ljava/util/concurrent/Executor;)V
    :try_end_61
    .catchall {:try_start_20 .. :try_end_61} :catchall_64

    const/4 p1, 0x1

    .line 29
    monitor-exit p0

    return p1

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zzarq()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->zzgwb:Lcom/google/android/gms/internal/ads/zzdhi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhi;->onAdFailedToLoad(I)V

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdio;)Lcom/google/android/gms/internal/ads/zzbmt;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdgr;->zza(Lcom/google/android/gms/internal/ads/zzdio;)Lcom/google/android/gms/internal/ads/zzbmt;

    move-result-object p1

    return-object p1
.end method
