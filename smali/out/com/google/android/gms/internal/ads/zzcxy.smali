.class final synthetic Lcom/google/android/gms/internal/ads/zzcxy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgqm:Lcom/google/android/gms/internal/ads/zzcxz;

.field private final zzgqn:Ljava/util/List;

.field private final zzgqo:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxz;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zzgqm:Lcom/google/android/gms/internal/ads/zzcxz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zzgqn:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zzgqo:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zzgqm:Lcom/google/android/gms/internal/ads/zzcxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zzgqn:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxy;->zzgqo:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
