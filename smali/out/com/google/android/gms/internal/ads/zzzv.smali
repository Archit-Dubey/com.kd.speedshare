.class public final Lcom/google/android/gms/internal/ads/zzzv;
.super Lcom/google/android/gms/internal/ads/zzyb;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final zzcko:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzcko:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvj;)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzcko:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_13

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvj;->zzacz:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvj;->zzada:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzvj;->zzadb:J

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzv;->zzcko:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_13
    return-void
.end method
