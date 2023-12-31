.class public final Lcom/google/android/gms/internal/ads/zzdha;
.super Lcom/google/android/gms/internal/ads/zzwv;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzy;
.implements Lcom/google/android/gms/internal/ads/zzbuf;
.implements Lcom/google/android/gms/internal/ads/zzsa;


# instance fields
.field private final zzbov:Lcom/google/android/gms/internal/ads/zzbbd;

.field private final zzbum:Ljava/lang/String;

.field private final zzfng:Landroid/view/ViewGroup;

.field private final zzgmd:Lcom/google/android/gms/internal/ads/zzbif;

.field private final zzgov:Landroid/content/Context;

.field private zzgwm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzgwn:Lcom/google/android/gms/internal/ads/zzdgr;

.field private final zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

.field private zzgwp:J

.field private zzgwq:Lcom/google/android/gms/internal/ads/zzbml;

.field protected zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbif;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdgr;Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzbbd;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwv;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzfng:Landroid/view/ViewGroup;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgmd:Lcom/google/android/gms/internal/ads/zzbif;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgov:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzbum:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwn:Lcom/google/android/gms/internal/ads/zzdgr;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

    .line 9
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzdhi;->zza(Lcom/google/android/gms/internal/ads/zzbuf;)V

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzbov:Lcom/google/android/gms/internal/ads/zzbbd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdha;)Landroid/view/ViewGroup;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzfng:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbmw;)Lcom/google/android/gms/ads/internal/overlay/zzq;
    .registers 6

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmw;->zzabs()Z

    move-result p1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzctd:Lcom/google/android/gms/internal/ads/zzaag;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>()V

    const/16 v2, 0x32

    .line 31
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    move v3, v0

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 32
    :goto_23
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingLeft:I

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    move p1, v0

    .line 33
    :goto_2a
    iput p1, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingRight:I

    .line 34
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingTop:I

    .line 35
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingBottom:I

    .line 36
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgov:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzy;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdha;Lcom/google/android/gms/internal/ads/zzbmw;)Lcom/google/android/gms/ads/internal/overlay/zzq;
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdha;->zza(Lcom/google/android/gms/internal/ads/zzbmw;)Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-result-object p0

    return-object p0
.end method

.method private final zzarr()V
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmw;->zzahm()Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbmw;->zzahm()Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzb(Lcom/google/android/gms/internal/ads/zzsl;)V

    .line 64
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhi;->onAdClosed()V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzfng:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwq:Lcom/google/android/gms/internal/ads/zzbml;

    if-eqz v0, :cond_34

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/internal/ads/zzre;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzre;->zzb(Lcom/google/android/gms/internal/ads/zzrj;)V

    .line 69
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    if-eqz v0, :cond_46

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbmw;->zzfd(J)V

    .line 71
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdha;->destroy()V

    :cond_49
    return-void
.end method

.method private final zzars()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgov:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbmw;->zzahj()Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdld;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzbmw;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .line 37
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmw;->zzabs()Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0xb

    goto :goto_16

    :cond_14
    const/16 p0, 0x9

    .line 41
    :goto_16
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdha;)Lcom/google/android/gms/internal/ads/zzbbd;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzbov:Lcom/google/android/gms/internal/ads/zzbbd;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdha;Lcom/google/android/gms/internal/ads/zzbmw;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdha;->zzc(Lcom/google/android/gms/internal/ads/zzbmw;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdha;)Lcom/google/android/gms/internal/ads/zzvh;
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdha;->zzars()Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzbmw;)V
    .registers 2

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbmw;->zza(Lcom/google/android/gms/internal/ads/zzsa;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbmw;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 1

    .line 130
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdha;->zzb(Lcom/google/android/gms/internal/ads/zzbmw;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdha;)Lcom/google/android/gms/internal/ads/zzdhi;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "destroy must be called on the main UI thread."

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    if-eqz v0, :cond_f

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->destroy()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 79
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzbum:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 94
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzyi;
    .registers 2

    monitor-enter p0

    .line 107
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwn:Lcom/google/android/gms/internal/ads/zzdgr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgr;->isLoading()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized pause()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "pause must be called on the main UI thread."

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 81
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "resume must be called on the main UI thread."

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 83
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .registers 2

    monitor-enter p0

    .line 106
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final showInterstitial()V
    .registers 1

    return-void
.end method

.method public final stopLoading()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .registers 2

    monitor-enter p0

    .line 108
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzabo;)V
    .registers 2

    monitor-enter p0

    .line 109
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqs;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqy;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatq;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzb(Lcom/google/android/gms/internal/ads/zzsg;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 92
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 93
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwn:Lcom/google/android/gms/internal/ads/zzdgr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgr;->zza(Lcom/google/android/gms/internal/ads/zzvo;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwi;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwj;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxe;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxk;)V
    .registers 2

    monitor-enter p0

    .line 105
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyo;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzve;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "loadAd must be called on the main UI thread."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgov:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaye;->zzbf(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzve;->zzchg:Lcom/google/android/gms/internal/ads/zzuw;

    if-nez v0, :cond_24

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwo:Lcom/google/android/gms/internal/ads/zzdhi;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdhi;->onAdFailedToLoad(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_47

    .line 20
    monitor-exit p0

    return v1

    .line 21
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdha;->isLoading()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_47

    if-eqz v0, :cond_2c

    .line 22
    monitor-exit p0

    return v1

    .line 23
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhb;-><init>(Lcom/google/android/gms/internal/ads/zzdha;)V

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwn:Lcom/google/android/gms/internal/ads/zzdgr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzbum:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>(Lcom/google/android/gms/internal/ads/zzdha;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdgr;->zza(Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcxp;)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_47

    monitor-exit p0

    return p1

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzajb()V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    if-nez v0, :cond_5

    return-void

    .line 51
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwp:J

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmw;->zzahc()I

    move-result v0

    if-gtz v0, :cond_18

    return-void

    .line 55
    :cond_18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbml;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgmd:Lcom/google/android/gms/internal/ads/zzbif;

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbif;->zzadf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbml;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwq:Lcom/google/android/gms/internal/ads/zzbml;

    .line 57
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdhc;-><init>(Lcom/google/android/gms/internal/ads/zzdha;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbml;->zza(ILjava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzart()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgmd:Lcom/google/android/gms/internal/ads/zzbif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbif;->zzade()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdgz;-><init>(Lcom/google/android/gms/internal/ads/zzdha;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzaru()V
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdha;->zzarr()V

    return-void
.end method

.method public final zzbo(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzkf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzfng:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzkg()V
    .registers 1

    monitor-enter p0

    .line 104
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkh()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    if-eqz v0, :cond_1c

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgov:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzgwr:Lcom/google/android/gms/internal/ads/zzbmw;

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbmw;->zzahj()Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdld;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    .line 91
    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzki()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 95
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkj()Lcom/google/android/gms/internal/ads/zzyd;
    .registers 2

    monitor-enter p0

    .line 96
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzxe;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkl()Lcom/google/android/gms/internal/ads/zzwj;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzms()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdha;->zzarr()V

    return-void
.end method

.method public final zzuk()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdha;->zzarr()V

    return-void
.end method
