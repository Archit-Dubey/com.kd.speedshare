.class final synthetic Lcom/google/android/gms/internal/ads/zzcfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahc;


# instance fields
.field private final zzgbg:Lcom/google/android/gms/internal/ads/zzcfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzgbg:Lcom/google/android/gms/internal/ads/zzcfu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzgbg:Lcom/google/android/gms/internal/ads/zzcfu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfu;->zzg(Lcom/google/android/gms/internal/ads/zzbfn;Ljava/util/Map;)V

    return-void
.end method