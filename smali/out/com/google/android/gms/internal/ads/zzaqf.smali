.class public final Lcom/google/android/gms/internal/ads/zzaqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static zzdmy:Z

.field private static zzzg:Z


# instance fields
.field private zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    .line 97
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmy:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzq(Landroid/content/Context;)V
    .registers 5

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmy:Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    .line 20
    :try_start_1a
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmy:Z

    const-string v1, "com.google.android.gms.ads.omid.DynamiteOmid"

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqe;->zzbxr:Lcom/google/android/gms/internal/ads/zzbbc;

    .line 22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbaz;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbc;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;
    :try_end_28
    .catch Lcom/google/android/gms/internal/ads/zzbbb; {:try_start_1a .. :try_end_28} :catch_29
    .catchall {:try_start_1a .. :try_end_28} :catchall_31

    goto :goto_2f

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v1, "#007 Could not call remote method."

    .line 25
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw p1
.end method


# virtual methods
.method public final getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 31
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzq(Landroid/content/Context;)V

    const-string p1, "a."

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_33} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    const-string v0, "#007 Could not call remote method."

    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 13

    const-string v6, "Google"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaqf;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 18

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    if-nez v0, :cond_1b

    goto :goto_38

    .line 42
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_3b

    move-object v3, p0

    .line 43
    :try_start_1d
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 45
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2e} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    goto :goto_32

    :catch_31
    move-exception v0

    :goto_32
    const-string v1, "#007 Could not call remote method."

    .line 47
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_38
    :goto_38
    move-object v3, p0

    .line 41
    :try_start_39
    monitor-exit v1

    return-object v2

    :catchall_3b
    move-exception v0

    move-object v3, p0

    .line 42
    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    throw v0

    :catchall_3f
    move-exception v0

    goto :goto_3d
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .registers 6

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    if-nez v1, :cond_1a

    goto :goto_2e

    .line 76
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_30

    .line 77
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdpi;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    goto :goto_28

    :catch_27
    move-exception p1

    :goto_28
    const-string p2, "#007 Could not call remote method."

    .line 80
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 75
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    .line 76
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    if-nez v1, :cond_1a

    goto :goto_2a

    .line 54
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    .line 55
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    const-string v0, "#007 Could not call remote method."

    .line 58
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 53
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final zzac(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    if-nez v1, :cond_1a

    goto :goto_2a

    .line 65
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    .line 66
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzac(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    const-string v0, "#007 Could not call remote method."

    .line 69
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 64
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .registers 6

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    if-nez v1, :cond_1a

    goto :goto_2e

    .line 87
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_30

    .line 88
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    .line 89
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 90
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdpi;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    goto :goto_28

    :catch_27
    move-exception p1

    :goto_28
    const-string p2, "#007 Could not call remote method."

    .line 93
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 86
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final zzp(Landroid/content/Context;)Z
    .registers 5

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzctk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 6
    monitor-exit v0

    return v2

    .line 7
    :cond_18
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z

    if-eqz v1, :cond_1f

    const/4 p1, 0x1

    .line 8
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3a

    return p1

    .line 9
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzq(Landroid/content/Context;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdmz:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzau(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    .line 11
    sput-boolean p1, Lcom/google/android/gms/internal/ads/zzaqf;->zzzg:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_2e} :catch_30
    .catchall {:try_start_1f .. :try_end_2e} :catchall_3a

    :try_start_2e
    monitor-exit v0

    return p1

    :catch_30
    move-exception p1

    goto :goto_33

    :catch_32
    move-exception p1

    :goto_33
    const-string v1, "#007 Could not call remote method."

    .line 13
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    monitor-exit v0

    return v2

    :catchall_3a
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw p1
.end method
