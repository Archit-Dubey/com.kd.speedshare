.class final synthetic Lcom/google/android/gms/internal/ads/zzdjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdie;


# instance fields
.field private final zzedb:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzedb:I

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzedb:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauq;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzauq;->onRewardedAdFailedToLoad(I)V

    return-void
.end method
