.class final synthetic Lcom/google/android/gms/internal/ads/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field static final synthetic zzaav:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcb;->values()[Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfn;->zzaav:[I

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcb;->zzfe:Lcom/google/android/gms/internal/ads/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfn;->zzaav:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcb;->zzfd:Lcom/google/android/gms/internal/ads/zzcb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
