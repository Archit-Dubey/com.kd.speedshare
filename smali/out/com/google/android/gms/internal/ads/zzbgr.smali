.class public Lcom/google/android/gms/internal/ads/zzbgr;
.super Lcom/google/android/gms/internal/ads/zzbfq;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zztm;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zztm;Z)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbfn;

    if-nez v0, :cond_b

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfn;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgr;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v0, :cond_17

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgr;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzavr;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    .line 9
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    if-nez p3, :cond_2e

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 13
    :cond_2e
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbfq;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 14
    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaaz()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object p2

    if-eqz p2, :cond_40

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaaz()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzum()V

    .line 17
    :cond_40
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaav;->zzcmn:Lcom/google/android/gms/internal/ads/zzaag;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/String;

    goto :goto_76

    .line 21
    :cond_57
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaav;->zzcmm:Lcom/google/android/gms/internal/ads/zzaag;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/String;

    goto :goto_76

    .line 25
    :cond_6a
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaav;->zzcml:Lcom/google/android/gms/internal/ads/zzaag;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/String;

    .line 28
    :goto_76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    .line 30
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
