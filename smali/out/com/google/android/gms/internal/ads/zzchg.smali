.class public final Lcom/google/android/gms/internal/ads/zzchg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzchh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzeuo:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzbtl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfkx:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzdkk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzbtl;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzdkk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzeuo:Lcom/google/android/gms/internal/ads/zzelj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfkx:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzeuo:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchg;->zzfkx:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdkk;

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzchh;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzchh;-><init>(Lcom/google/android/gms/internal/ads/zzbtl;Lcom/google/android/gms/internal/ads/zzdkk;)V

    return-object v2
.end method
