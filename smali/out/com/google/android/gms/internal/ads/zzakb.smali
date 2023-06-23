.class final synthetic Lcom/google/android/gms/internal/ads/zzakb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhb;


# instance fields
.field private final zzdfu:Lcom/google/android/gms/internal/ads/zzajx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzdfu:Lcom/google/android/gms/internal/ads/zzajx;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzbhb;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakb;-><init>(Lcom/google/android/gms/internal/ads/zzajx;)V

    return-object v0
.end method


# virtual methods
.method public final zzta()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzdfu:Lcom/google/android/gms/internal/ads/zzajx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajx;->zzsz()V

    return-void
.end method
