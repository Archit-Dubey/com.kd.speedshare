.class public final Lcom/google/android/gms/internal/ads/zzdke;
.super Lcom/google/android/gms/internal/ads/zzatm;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzfri:Lcom/google/android/gms/internal/ads/zzdkv;

.field private zzgpw:Z

.field private final zzgyz:Lcom/google/android/gms/internal/ads/zzdjq;

.field private final zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

.field private zzgzb:Lcom/google/android/gms/internal/ads/zzchj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjq;Lcom/google/android/gms/internal/ads/zzdiu;Lcom/google/android/gms/internal/ads/zzdkv;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgpw:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgyz:Lcom/google/android/gms/internal/ads/zzdjq;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzfri:Lcom/google/android/gms/internal/ads/zzdkv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdke;)Lcom/google/android/gms/internal/ads/zzchj;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdke;Lcom/google/android/gms/internal/ads/zzchj;)Lcom/google/android/gms/internal/ads/zzchj;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    return-object p1
.end method

.method private final declared-synchronized zzapx()Z
    .registers 2

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchj;->isClosed()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method


# virtual methods
.method public final destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdke;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    const-string v0, "getAdMetadata can only be called from the UI thread."

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchj;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->zzaih()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->zzaih()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsg;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "isLoaded must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdke;->zzapx()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdke;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdke;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setAppPackageName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized setCustomData(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcob:Lcom/google/android/gms/internal/ads/zzaag;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_20

    if-nez v0, :cond_15

    .line 82
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzfri:Lcom/google/android/gms/internal/ads/zzdkv;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdkv;->zzdus:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    .line 85
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgpw:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 88
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setUserId(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "setUserId must be called on the main UI thread."

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzfri:Lcom/google/android/gms/internal/ads/zzdkv;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdkv;->zzdur:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 78
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized show()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdke;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 43
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzath;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdiu;->zzb(Lcom/google/android/gms/internal/ads/zzath;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdiu;->zzb(Lcom/google/android/gms/internal/ads/zzatq;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzatw;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "loadAd must be called on the main UI thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatw;->zzbum:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzcs(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_49

    if-eqz v0, :cond_10

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdke;->zzapx()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcua:Lcom/google/android/gms/internal/ads/zzaag;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_49

    if-nez v0, :cond_2a

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_2a
    :try_start_2a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdjn;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgyz:Lcom/google/android/gms/internal/ads/zzdjq;

    sget v2, Lcom/google/android/gms/internal/ads/zzdks;->zzhal:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdjq;->zzdy(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgyz:Lcom/google/android/gms/internal/ads/zzdjq;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzatw;->zzdpj:Lcom/google/android/gms/internal/ads/zzve;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatw;->zzbum:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdkd;-><init>(Lcom/google/android/gms/internal/ads/zzdke;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzdjq;->zza(Lcom/google/android/gms/internal/ads/zzve;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcxp;)Z
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_49

    .line 19
    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 4

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-nez p1, :cond_e

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdiu;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 72
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdkg;-><init>(Lcom/google/android/gms/internal/ads/zzdke;Lcom/google/android/gms/internal/ads/zzwz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdiu;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "showAd must be called on the main UI thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_23

    if-nez v0, :cond_c

    .line 46
    monitor-exit p0

    return-void

    :cond_c
    if-eqz p1, :cond_19

    .line 49
    :try_start_e
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 51
    check-cast p1, Landroid/app/Activity;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 54
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgpw:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzchj;->zzb(ZLandroid/app/Activity;)Z
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_23

    .line 55
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "pause must be called on the main UI thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_14

    .line 32
    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 33
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->zzaig()Lcom/google/android/gms/internal/ads/zzbtf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtf;->zzca(Landroid/content/Context;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 34
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "resume must be called on the main UI thread."

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_14

    .line 39
    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 40
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->zzaig()Lcom/google/android/gms/internal/ads/zzbtf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtf;->zzcb(Landroid/content/Context;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 41
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzkj()Lcom/google/android/gms/internal/ads/zzyd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcwq:Lcom/google/android/gms/internal/ads/zzaag;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_24

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 92
    monitor-exit p0

    return-object v1

    .line 93
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->zzaih()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    monitor-exit p0

    return-object v0

    :cond_22
    monitor-exit p0

    return-object v1

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "destroy must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgza:Lcom/google/android/gms/internal/ads/zzdiu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdiu;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_23

    if-nez p1, :cond_13

    goto :goto_1a

    .line 25
    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 26
    :goto_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpb;->zzaig()Lcom/google/android/gms/internal/ads/zzbtf;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbtf;->zzcc(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 27
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzqw()Z
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->zzgzb:Lcom/google/android/gms/internal/ads/zzchj;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchj;->zzqw()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
