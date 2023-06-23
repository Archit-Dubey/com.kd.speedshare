.class public final Lcom/google/android/gms/internal/ads/zzanr;
.super Lcom/google/android/gms/internal/ads/zzamw;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

.field private final zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;Lcom/google/android/gms/internal/ads/zzatx;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAdClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zzaj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzatx;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V

    :cond_d
    return-void
.end method

.method public final onAdImpression()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onAdLoaded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAdOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zzah(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onVideoEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onVideoPause()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onVideoPlay()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaep;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzamy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaud;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_1a

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaub;

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaud;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaud;->getAmount()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Ljava/lang/String;I)V

    .line 18
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzatx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaub;)V

    :cond_1a
    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaub;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzc(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzdc(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzdm(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzdn(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zztt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zzai(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final zztu()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkc:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v0, :cond_d

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzdkm:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatx;->zzam(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method
