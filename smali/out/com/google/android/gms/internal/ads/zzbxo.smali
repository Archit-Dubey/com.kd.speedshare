.class public final Lcom/google/android/gms/internal/ads/zzbxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbyg<",
        "Lcom/google/android/gms/ads/doubleclick/AppEventListener;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzftd:Lcom/google/android/gms/internal/ads/zzbxa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbxa;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxo;->zzftd:Lcom/google/android/gms/internal/ads/zzbxa;

    return-void
.end method

.method public static zzu(Lcom/google/android/gms/internal/ads/zzbxa;)Lcom/google/android/gms/internal/ads/zzbxo;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxo;-><init>(Lcom/google/android/gms/internal/ads/zzbxa;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxo;->zzftd:Lcom/google/android/gms/internal/ads/zzbxa;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxa;->zzajq()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzelg;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
