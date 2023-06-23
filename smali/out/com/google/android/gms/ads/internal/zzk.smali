.class final Lcom/google/android/gms/ads/internal/zzk;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final synthetic zzbox:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 40
    :try_start_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzwj;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 43
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzl;->zzkn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    :cond_e
    const-string p1, "gmsg://noAdLoaded"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "#007 Could not call remote method."

    const/4 v2, 0x1

    if-eqz p1, :cond_36

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 6
    :try_start_21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzwj;->onAdFailedToLoad(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 9
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzbs(I)V

    return v2

    :cond_36
    const-string p1, "gmsg://scriptLoadFailed"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 14
    :try_start_46
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzwj;->onAdFailedToLoad(I)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p1

    .line 17
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzbs(I)V

    return v2

    :cond_5a
    const-string p1, "gmsg://adResized"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 22
    :try_start_6a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwj;->onAdLoaded()V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p1

    .line 25
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzl;->zzbp(Ljava/lang/String;)I

    move-result p1

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzl;->zzbs(I)V

    return v2

    :cond_84
    const-string p1, "gmsg://"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8d

    return v2

    .line 31
    :cond_8d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 32
    :try_start_95
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;)Lcom/google/android/gms/internal/ads/zzwj;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwj;->onAdLeftApplication()V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9e} :catch_9f

    goto :goto_a3

    :catch_9f
    move-exception p1

    .line 35
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbox:Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;)V

    return v2
.end method
