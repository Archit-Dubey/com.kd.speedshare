.class public final Lcom/google/android/gms/internal/ads/zzdny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzdvi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaul()Lcom/google/android/gms/internal/ads/zzdny;
    .registers 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnx;->zzauk()Lcom/google/android/gms/internal/ads/zzdny;

    move-result-object v0

    return-object v0
.end method

.method public static zzaum()Lcom/google/android/gms/internal/ads/zzdvi;
    .registers 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzedi:Lcom/google/android/gms/internal/ads/zzdvi;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzelg;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdvi;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdny;->zzaum()Lcom/google/android/gms/internal/ads/zzdvi;

    move-result-object v0

    return-object v0
.end method
