.class public final Lcom/google/android/gms/internal/ads/zzafu;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
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

.field private final zzdcn:Lcom/google/android/gms/internal/ads/zzadu;

.field private final zzdco:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

.field private final zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

.field private final zzdcv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;)V
    .registers 7

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcm:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzcjk:Lcom/google/android/gms/ads/VideoController;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcv:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    const/4 v1, 0x0

    .line 6
    :try_start_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaft;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4c

    .line 11
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_4c

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 13
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 14
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzadt;

    if-eqz v4, :cond_46

    .line 15
    check-cast v3, Lcom/google/android/gms/internal/ads/zzadt;

    goto :goto_4d

    .line 16
    :cond_46
    new-instance v3, Lcom/google/android/gms/internal/ads/zzadv;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(Landroid/os/IBinder;)V

    goto :goto_4d

    :cond_4c
    move-object v3, v1

    :goto_4d
    if-eqz v3, :cond_27

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcm:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_59} :catch_5a

    goto :goto_27

    :catch_5a
    move-exception p1

    .line 25
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_5e
    :try_start_5e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaft;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6a
    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 30
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_7f

    .line 31
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzxw;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v2

    goto :goto_80

    :cond_7f
    move-object v2, v1

    :goto_80
    if-eqz v2, :cond_6a

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcv:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzxy;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzxy;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_8c} :catch_8d

    goto :goto_6a

    :catch_8d
    move-exception p1

    .line 39
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_91
    :try_start_91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzsc()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9e} :catch_9f

    goto :goto_a4

    :catch_9f
    move-exception p1

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a3
    move-object v2, v1

    .line 49
    :goto_a4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcn:Lcom/google/android/gms/internal/ads/zzadu;

    .line 51
    :try_start_a6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzadm;-><init>(Lcom/google/android/gms/internal/ads/zzadl;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b9} :catch_bb

    move-object v1, p1

    goto :goto_bf

    :catch_bb
    move-exception p1

    .line 55
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_bf
    :goto_bf
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdco:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 60
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->cancelUnconfirmedClick()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to cancelUnconfirmedClick"

    .line 177
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .registers 3

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 150
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final enableCustomClickGesture()V
    .registers 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzsm()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 131
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdco:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getAdvertiser()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 181
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 90
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 95
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_9

    if-eqz v0, :cond_f

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, ""

    .line 126
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 85
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcn:Lcom/google/android/gms/internal/ads/zzadu;

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

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcm:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .registers 3

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzsn()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 184
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzsn()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzc;-><init>(Lcom/google/android/gms/internal/ads/zzado;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, ""

    .line 187
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 119
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcv:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 3

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 108
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 3

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzkj()Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 193
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 194
    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaft;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    .line 98
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v1

    const-string v2, ""

    .line 100
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getStore()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 104
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzcjk:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaft;->getVideoController()Lcom/google/android/gms/internal/ads/zzyi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzyi;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 114
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzcjk:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->isCustomClickGestureEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 135
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .registers 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->isCustomMuteThisAdEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 145
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final muteThisAd(Lcom/google/android/gms/ads/MuteThisAdReason;)V
    .registers 3

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->isCustomMuteThisAdEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "Ad is not custom mute enabled"

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_15

    .line 161
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzxt;)V

    return-void

    .line 162
    :cond_15
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzxy;

    if-eqz v0, :cond_25

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxy;->zzqh()Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzxt;)V

    return-void

    :cond_25
    const-string p1, "Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null"

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    const-string v0, ""

    .line 167
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->performClick(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 72
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .registers 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->recordCustomClickGesture()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 140
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    const-string v0, ""

    .line 76
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 81
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMuteThisAdListener(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .registers 4

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzxu;-><init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzxp;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, ""

    .line 172
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 4

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzzv;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Failed to setOnPaidEventListener"

    .line 198
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUnconfirmedClickListener(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V
    .registers 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzagg;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzafo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Failed to setUnconfirmedClickListener"

    .line 155
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzjr()Ljava/lang/Object;
    .registers 2

    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafu;->zzsb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzjw()Ljava/lang/Object;
    .registers 3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzdcu:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzse()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, ""

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
