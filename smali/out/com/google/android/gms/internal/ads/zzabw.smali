.class final synthetic Lcom/google/android/gms/internal/ads/zzabw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field static final synthetic zzcyo:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzabz;->zzrr()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabw;->zzcyo:[I

    const/4 v1, 0x1

    :try_start_a
    sget v2, Lcom/google/android/gms/internal/ads/zzabz;->zzcyq:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :try_start_f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabw;->zzcyo:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzabz;->zzcyr:I

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_17} :catch_17

    :catch_17
    :try_start_17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabw;->zzcyo:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzabz;->zzcys:I

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabw;->zzcyo:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzabz;->zzcyt:I

    sub-int/2addr v2, v1

    const/4 v1, 0x4

    aput v1, v0, v2
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method
