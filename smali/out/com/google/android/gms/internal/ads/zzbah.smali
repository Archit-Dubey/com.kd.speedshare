.class public final Lcom/google/android/gms/internal/ads/zzbah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static zzecb:Lcom/google/android/gms/internal/ads/zzbah;


# instance fields
.field zzecc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzyc()Lcom/google/android/gms/internal/ads/zzbah;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzecb:Lcom/google/android/gms/internal/ads/zzbah;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzecb:Lcom/google/android/gms/internal/ads/zzbah;

    .line 3
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzecb:Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0
.end method
