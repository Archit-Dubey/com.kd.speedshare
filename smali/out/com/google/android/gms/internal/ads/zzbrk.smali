.class public final Lcom/google/android/gms/internal/ads/zzbrk;
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
        "Lcom/google/android/gms/internal/ads/zzbva;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfmj:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzbrj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqr:Lcom/google/android/gms/internal/ads/zzbrl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzbrj;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzfqr:Lcom/google/android/gms/internal/ads/zzbrl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzfmj:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzbrk;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzbrj;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbrk;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrk;-><init>(Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzelj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzfmj:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbrj;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyg;

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbf;->zzedm:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyg;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelg;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyg;

    return-object v0
.end method
