.class final synthetic Lcom/google/android/gms/internal/ads/zzdol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzduh;


# instance fields
.field private final zzhfr:Lcom/google/android/gms/internal/ads/zzdob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdob;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdol;->zzhfr:Lcom/google/android/gms/internal/ads/zzdob;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdol;->zzhfr:Lcom/google/android/gms/internal/ads/zzdob;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdob;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdux;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object p1

    return-object p1
.end method
