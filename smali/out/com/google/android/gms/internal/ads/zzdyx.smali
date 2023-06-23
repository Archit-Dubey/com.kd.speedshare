.class final synthetic Lcom/google/android/gms/internal/ads/zzdyx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field static final synthetic zzhrm:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeav;->values()[Lcom/google/android/gms/internal/ads/zzeav;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyx;->zzhrm:[I

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeav;->zzhud:Lcom/google/android/gms/internal/ads/zzeav;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeav;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyx;->zzhrm:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeav;->zzhuf:Lcom/google/android/gms/internal/ads/zzeav;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeav;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyx;->zzhrm:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeav;->zzhug:Lcom/google/android/gms/internal/ads/zzeav;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeav;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
