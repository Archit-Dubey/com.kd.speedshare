.class final synthetic Lcom/google/android/gms/internal/ads/zzdjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdie;


# instance fields
.field private final zzfrr:Lcom/google/android/gms/internal/ads/zzuy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzfrr:Lcom/google/android/gms/internal/ads/zzuy;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzfrr:Lcom/google/android/gms/internal/ads/zzuy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuy;->errorCode:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzauj;->onRewardedAdFailedToShow(I)V

    return-void
.end method
