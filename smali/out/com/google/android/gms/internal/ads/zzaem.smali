.class public final Lcom/google/android/gms/internal/ads/zzaem;
.super Lcom/google/android/gms/ads/formats/NativeContentAd;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final zzcjk:Lcom/google/android/gms/ads/VideoController;

.field private final zzdcm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdco:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

.field private final zzdcp:Lcom/google/android/gms/internal/ads/zzael;

.field private final zzdcq:Lcom/google/android/gms/internal/ads/zzadu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzael;)V
    .registers 7

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeContentAd;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcm:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzcjk:Lcom/google/android/gms/ads/VideoController;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    const/4 v1, 0x0

    .line 5
    :try_start_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzael;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_45

    .line 10
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_45

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 12
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 13
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzadt;

    if-eqz v4, :cond_3f

    .line 14
    check-cast v3, Lcom/google/android/gms/internal/ads/zzadt;

    goto :goto_46

    .line 15
    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/ads/zzadv;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(Landroid/os/IBinder;)V

    goto :goto_46

    :cond_45
    move-object v3, v1

    :goto_46
    if-eqz v3, :cond_20

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcm:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_52} :catch_53

    goto :goto_20

    :catch_53
    move-exception p1

    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_57
    :try_start_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzael;->zzsf()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_6a

    :catch_65
    move-exception p1

    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    move-object v2, v1

    .line 34
    :goto_6a
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcq:Lcom/google/android/gms/internal/ads/zzadu;

    .line 36
    :try_start_6c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzael;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzael;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzadm;-><init>(Lcom/google/android/gms/internal/ads/zzadl;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7f} :catch_81

    move-object v1, p1

    goto :goto_85

    :catch_81
    move-exception p1

    .line 40
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_85
    :goto_85
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdco:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 45
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 97
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdco:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/CharSequence;
    .registers 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getAdvertiser()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 77
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBody()Ljava/lang/CharSequence;
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 68
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/CharSequence;
    .registers 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 73
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 87
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/CharSequence;
    .registers 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 63
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcm:Ljava/util/List;

    return-object v0
.end method

.method public final getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcq:Lcom/google/android/gms/internal/ads/zzadu;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/CharSequence;
    .registers 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 92
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzael;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzcjk:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzael;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 83
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzcjk:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzael;->performClick(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 50
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzael;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    const-string v0, ""

    .line 54
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->zzdcp:Lcom/google/android/gms/internal/ads/zzael;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzael;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 59
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzjr()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaem;->zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
