.class public final Lcom/google/android/gms/internal/ads/zzbxy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsl;


# instance fields
.field private zzftg:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxy;->zzftg:Z

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxy;->zzftg:Z

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdOpened()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method
