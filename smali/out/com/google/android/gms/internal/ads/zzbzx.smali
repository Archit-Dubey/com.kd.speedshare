.class public final Lcom/google/android/gms/internal/ads/zzbzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzbyg<",
        "Lcom/google/android/gms/internal/ads/zzbxz;",
        ">;>;"
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzbzk;Lcom/google/android/gms/internal/ads/zzcau;)Lcom/google/android/gms/internal/ads/zzbyg;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbzk;",
            "Lcom/google/android/gms/internal/ads/zzcau;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbyg<",
            "Lcom/google/android/gms/internal/ads/zzbxz;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbyg;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzedm:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyg;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzelg;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbyg;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 6
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
