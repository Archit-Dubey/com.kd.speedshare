.class public final Lcom/google/android/gms/internal/ads/zzbzs;
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
        "Lcom/google/android/gms/ads/internal/overlay/zzo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfmy:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzcao;",
            ">;"
        }
    .end annotation
.end field

.field private final zzftx:Lcom/google/android/gms/internal/ads/zzbzk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbzk;Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbzk;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzcao;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzs;->zzftx:Lcom/google/android/gms/internal/ads/zzbzk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzs;->zzfmy:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbzk;Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzbzs;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbzk;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzcao;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbzs;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>(Lcom/google/android/gms/internal/ads/zzbzk;Lcom/google/android/gms/internal/ads/zzelj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->zzfmy:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcao;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyg;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbf;->zzedl:Lcom/google/android/gms/internal/ads/zzdvi;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyg;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelg;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyg;

    return-object v0
.end method
