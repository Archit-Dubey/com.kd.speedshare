.class public final Lcom/google/android/gms/ads/internal/overlay/zzu;
.super Lcom/google/android/gms/internal/ads/zzaqh;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzaar:Landroid/app/Activity;

.field private zzdnh:Z

.field private zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzdop:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqh;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdnh:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdop:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized zzuv()V
    .registers 2

    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdop:Z

    if-nez v0, :cond_15

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_12

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzud()V

    :cond_12
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdop:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 50
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onBackPressed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    .line 9
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_17

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_17
    if-eqz v1, :cond_1f

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1f
    if-nez p1, :cond_4f

    .line 16
    iget-object p1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    if-eqz p1, :cond_2c

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzuu;->onAdClicked()V

    .line 18
    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p1, :cond_4f

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzue()V

    .line 22
    :cond_4f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdod:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 23
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p1

    if-nez p1, :cond_67

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_67
    return-void
.end method

.method public final onDestroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzuv()V

    :cond_b
    return-void
.end method

.method public final onPause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_d

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onPause()V

    .line 37
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzuv()V

    :cond_18
    return-void
.end method

.method public final onRestart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onResume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdnh:Z

    if-eqz v0, :cond_a

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdnh:Z

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_1a

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdoo:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onResume()V

    :cond_1a
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdnh:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onStop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzaar:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzuv()V

    :cond_b
    return-void
.end method

.method public final zzad(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzdp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzul()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
