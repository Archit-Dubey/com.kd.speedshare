.class final synthetic Lcom/google/android/gms/internal/ads/zzbee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjy;


# static fields
.field static final zzejv:Lcom/google/android/gms/internal/ads/zzjy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbee;->zzejv:Lcom/google/android/gms/internal/ads/zzjy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgq()[Lcom/google/android/gms/internal/ads/zzjx;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzjx;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzll;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzll;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzkn;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzle;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzle;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
