.class final synthetic Lcom/google/android/gms/internal/ads/zzbdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzon;


# instance fields
.field private final zzdfg:Ljava/lang/String;

.field private final zzejs:Lcom/google/android/gms/internal/ads/zzbdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdy;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzejs:Lcom/google/android/gms/internal/ads/zzbdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzdfg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzio()Lcom/google/android/gms/internal/ads/zzok;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzejs:Lcom/google/android/gms/internal/ads/zzbdy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzdfg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdy;->zzfk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzok;

    move-result-object v0

    return-object v0
.end method
