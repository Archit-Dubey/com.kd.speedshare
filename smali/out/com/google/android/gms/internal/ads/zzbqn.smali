.class public final Lcom/google/android/gms/internal/ads/zzbqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzbqk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfmf:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqk:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzaxg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzaxg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->zzfmf:Lcom/google/android/gms/internal/ads/zzelj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqn;->zzfqk:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzbqn;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzaxg;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbqn;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbqn;-><init>(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzelj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqn;->zzfmf:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/Clock;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->zzfqk:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaxg;

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqk;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbqk;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzaxg;)V

    return-object v2
.end method
