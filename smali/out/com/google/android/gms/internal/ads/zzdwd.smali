.class final synthetic Lcom/google/android/gms/internal/ads/zzdwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field static final synthetic zzhpi:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebz;->values()[Lcom/google/android/gms/internal/ads/zzebz;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwd;->zzhpi:[I

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzebz;->zzhwh:Lcom/google/android/gms/internal/ads/zzebz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebz;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwd;->zzhpi:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzebz;->zzhwj:Lcom/google/android/gms/internal/ads/zzebz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebz;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwd;->zzhpi:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzebz;->zzhwg:Lcom/google/android/gms/internal/ads/zzebz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebz;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwd;->zzhpi:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzebz;->zzhwi:Lcom/google/android/gms/internal/ads/zzebz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebz;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
