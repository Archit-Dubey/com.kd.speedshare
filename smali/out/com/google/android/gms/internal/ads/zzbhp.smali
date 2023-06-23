.class Lcom/google/android/gms/internal/ads/zzbhp;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhp;->setBackgroundColor(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_22

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 11
    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzayj;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const-string v0, "accessibility"

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 15
    :try_start_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p1

    const-string v0, "Unable to enable Javascript."

    .line 18
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 29
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p1, "Ignore addJavascriptInterface due to low Android version."

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    .line 22
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    goto :goto_9

    :catch_6
    move-exception p1

    goto :goto_9

    :catch_8
    move-exception p1

    .line 25
    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v1, "CoreWebView.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "#007 Could not call remote method."

    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public zzdb(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhw;->zza(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
