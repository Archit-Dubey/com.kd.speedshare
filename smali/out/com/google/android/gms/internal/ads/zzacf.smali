.class public final Lcom/google/android/gms/internal/ads/zzacf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field public static zzczk:Lcom/google/android/gms/internal/ads/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzabx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzczl:Lcom/google/android/gms/internal/ads/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzabx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzczm:Lcom/google/android/gms/internal/ads/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzabx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzczn:Lcom/google/android/gms/internal/ads/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzabx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzczo:Lcom/google/android/gms/internal/ads/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzabx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzczp:Lcom/google/android/gms/internal/ads/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzabx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczk:Lcom/google/android/gms/internal/ads/zzabx;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzabx;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczl:Lcom/google/android/gms/internal/ads/zzabx;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    .line 6
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczm:Lcom/google/android/gms/internal/ads/zzabx;

    const-string v0, "gads:content_length_weight"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczn:Lcom/google/android/gms/internal/ads/zzabx;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczo:Lcom/google/android/gms/internal/ads/zzabx;

    const-string v0, "gads:sleep_sec"

    .line 12
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacf;->zzczp:Lcom/google/android/gms/internal/ads/zzabx;

    return-void
.end method
