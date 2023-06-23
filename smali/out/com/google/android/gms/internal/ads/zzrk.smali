.class final Lcom/google/android/gms/internal/ads/zzrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzbti:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzbtj:Lcom/google/android/gms/internal/ads/zzrc;

.field final synthetic zzbtk:Landroid/webkit/WebView;

.field final synthetic zzbtl:Z

.field final synthetic zzbtm:Lcom/google/android/gms/internal/ads/zzri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzri;Lcom/google/android/gms/internal/ads/zzrc;Landroid/webkit/WebView;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtm:Lcom/google/android/gms/internal/ads/zzri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtj:Lcom/google/android/gms/internal/ads/zzrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtk:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtl:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzrn;-><init>(Lcom/google/android/gms/internal/ads/zzrk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbti:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtk:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbtk:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbti:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-void

    .line 7
    :catchall_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zzbti:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
