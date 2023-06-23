.class public final Lcom/google/android/gms/ads/internal/overlay/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z
    .registers 6

    :try_start_0
    const-string v0, "Launching an intent: "

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_29

    .line 45
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzuu()V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_29} :catch_2b

    :cond_29
    const/4 p0, 0x1

    return p0

    :catch_2b
    move-exception p0

    .line 47
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p0, "No intent data for launcher overlay."

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return v0

    .line 5
    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaav;->initialize(Landroid/content/Context;)V

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_17

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->intent:Landroid/content/Intent;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p0

    return p0

    .line 8
    :cond_17
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string p0, "Open GMSG did not contain a URL."

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return v0

    .line 12
    :cond_2a
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 14
    :cond_3e
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_47
    const-string v2, "android.intent.action.VIEW"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 17
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    :cond_59
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdnt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_92

    .line 19
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdnt:Ljava/lang/String;

    const-string v4, "/"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 20
    array-length v4, v2

    if-ge v4, v5, :cond_8b

    const-string p0, "Could not parse component name from open GMSG: "

    .line 21
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdnt:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_81

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_87

    :cond_81
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_87
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return v0

    .line 23
    :cond_8b
    aget-object v4, v2, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    :cond_92
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdnu:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a7

    .line 27
    :try_start_9a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_9e} :catch_9f

    goto :goto_a4

    :catch_9f
    const-string p1, "Could not parse intent flags."

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 31
    :goto_a4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    :cond_a7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcss:Lcom/google/android/gms/internal/ads/zzaag;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c4

    const/high16 p1, 0x10000000

    .line 35
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.support.customtabs.extra.user_opt_out"

    .line 36
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_dc

    .line 37
    :cond_c4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcsr:Lcom/google/android/gms/internal/ads/zzaag;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    :cond_dc
    :goto_dc
    invoke-static {p0, v1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p0

    return p0
.end method
