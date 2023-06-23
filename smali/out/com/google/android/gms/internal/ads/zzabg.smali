.class public final Lcom/google/android/gms/internal/ads/zzabg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final time:J

.field private final zzcyc:Ljava/lang/String;

.field private final zzcyd:Lcom/google/android/gms/internal/ads/zzabg;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->time:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzcyc:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzcyd:Lcom/google/android/gms/internal/ads/zzabg;

    return-void
.end method


# virtual methods
.method public final getTime()J
    .registers 3

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->time:J

    return-wide v0
.end method

.method public final zzrl()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzcyc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzrm()Lcom/google/android/gms/internal/ads/zzabg;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzcyd:Lcom/google/android/gms/internal/ads/zzabg;

    return-object v0
.end method
