.class final Lcom/google/android/gms/internal/ads/zzdwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwy$zzb;


# instance fields
.field private final synthetic zzhqi:Lcom/google/android/gms/internal/ads/zzdwv;

.field private final synthetic zzhqj:Lcom/google/android/gms/internal/ads/zzdwj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzdwj;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqi:Lcom/google/android/gms/internal/ads/zzdwv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqj:Lcom/google/android/gms/internal/ads/zzdwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaxm()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqi:Lcom/google/android/gms/internal/ads/zzdwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwj;->zzaxm()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zzaxw()Lcom/google/android/gms/internal/ads/zzdwi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdwi<",
            "*>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdww;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqi:Lcom/google/android/gms/internal/ads/zzdwv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqj:Lcom/google/android/gms/internal/ads/zzdwj;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwj;->zzaxn()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzdwj;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzaxx()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqi:Lcom/google/android/gms/internal/ads/zzdwv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zzaxy()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqj:Lcom/google/android/gms/internal/ads/zzdwj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdwi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lcom/google/android/gms/internal/ads/zzdwi<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdww;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqi:Lcom/google/android/gms/internal/ads/zzdwv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhqj:Lcom/google/android/gms/internal/ads/zzdwj;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdww;-><init>(Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzdwj;Ljava/lang/Class;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p1

    .line 4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
