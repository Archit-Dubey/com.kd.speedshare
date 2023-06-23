.class public final Lcom/google/android/gms/ads/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzboe:Z

.field private zzbof:Lcom/google/android/gms/internal/ads/zzavr;

.field private zzbog:Lcom/google/android/gms/internal/ads/zzarx;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavr;Lcom/google/android/gms/internal/ads/zzarx;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbof:Lcom/google/android/gms/internal/ads/zzavr;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbog:Lcom/google/android/gms/internal/ads/zzarx;

    if-nez p1, :cond_13

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzarx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzarx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbog:Lcom/google/android/gms/internal/ads/zzarx;

    :cond_13
    return-void
.end method

.method private final zzjx()Z
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbof:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v0, :cond_c

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzavr;->zzvi()Lcom/google/android/gms/internal/ads/zzavq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzavq;->zzdvz:Z

    if-nez v0, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbog:Lcom/google/android/gms/internal/ads/zzarx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzarx;->zzdsj:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final recordClick()V
    .registers 2

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzboe:Z

    return-void
.end method

.method public final zzbn(Ljava/lang/String;)V
    .registers 7

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzjx()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, ""

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    .line 17
    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbof:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 18
    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzavr;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    .line 20
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbog:Lcom/google/android/gms/internal/ads/zzarx;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzarx;->zzdsj:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbog:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzarx;->zzdsk:Ljava/util/List;

    if-eqz v1, :cond_50

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzbog:Lcom/google/android/gms/internal/ads/zzarx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzarx;->zzdsk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc;->zzvr:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_50
    return-void
.end method

.method public final zzjy()Z
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzjx()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzboe:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method
