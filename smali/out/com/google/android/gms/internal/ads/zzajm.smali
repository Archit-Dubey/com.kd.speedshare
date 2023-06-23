.class final Lcom/google/android/gms/internal/ads/zzajm;
.super Lcom/google/android/gms/internal/ads/zzbhs;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final synthetic zzdfh:Lcom/google/android/gms/internal/ads/zzajg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzdfh:Lcom/google/android/gms/internal/ads/zzajg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzajg;Lcom/google/android/gms/internal/ads/zzajk;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Lcom/google/android/gms/internal/ads/zzajg;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzdfh:Lcom/google/android/gms/internal/ads/zzajg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Lcom/google/android/gms/internal/ads/zzajg;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzdfh:Lcom/google/android/gms/internal/ads/zzajg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Lcom/google/android/gms/internal/ads/zzajg;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajx;->zzsz()V

    :cond_11
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzdfh:Lcom/google/android/gms/internal/ads/zzajg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbhr;)Z
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajm;->zzdfh:Lcom/google/android/gms/internal/ads/zzajg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
