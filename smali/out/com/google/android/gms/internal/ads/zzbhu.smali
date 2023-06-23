.class public Lcom/google/android/gms/internal/ads/zzbhu;
.super Lcom/google/android/gms/internal/ads/zzbhp;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhv;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzenl:Z

.field private zzeoe:Z

.field private final zzepk:Lcom/google/android/gms/internal/ads/zzbhs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhs;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhp;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwb()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzepk:Lcom/google/android/gms/internal/ads/zzbhs;

    .line 4
    invoke-super {p0, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private final declared-synchronized zzwc()V
    .registers 2

    monitor-enter p0

    .line 37
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzeoe:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzeoe:Z

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwc()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 40
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 78
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized destroy()V
    .registers 4

    monitor-enter p0

    .line 8
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v0, :cond_7

    .line 9
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 10
    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzenl:Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzepk:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhs;->zza(Lcom/google/android/gms/internal/ads/zzbhv;)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzbe(Z)V

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_35

    :try_start_1d
    const-string v0, "about:blank"

    .line 15
    invoke-super {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->loadUrl(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1d .. :try_end_22} :catch_24
    .catchall {:try_start_1d .. :try_end_22} :catchall_35

    .line 16
    monitor-exit p0

    return-void

    :catch_24
    move-exception v0

    .line 18
    :try_start_25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "#007 Could not call remote method."

    .line 19
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_35

    .line 20
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    .line 44
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 45
    :cond_12
    monitor-exit p0

    return-void

    .line 46
    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    .line 47
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_16

    .line 29
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzbe(Z)V

    .line 31
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzwc()V

    .line 32
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    .line 33
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_13
    move-exception v0

    .line 32
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    throw v0
.end method

.method public final declared-synchronized isDestroyed()Z
    .registers 2

    monitor-enter p0

    .line 6
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhu;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhp;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 55
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 57
    invoke-super/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzbhp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 59
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadUrl(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhp;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 51
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 63
    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhp;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 67
    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 71
    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 2

    return-void
.end method

.method public stopLoading()V
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 75
    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->stopLoading()V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string p1, "Blank page loaded, 1..."

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzabf()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 23
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized zzabf()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzwc()V

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzedl:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbht;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbht;-><init>(Lcom/google/android/gms/internal/ads/zzbhu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 27
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zzacw()V
    .registers 1

    .line 80
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->destroy()V

    return-void
.end method

.method protected zzbe(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic zzdb(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhp;->zzdb(Ljava/lang/String;)V

    return-void
.end method
