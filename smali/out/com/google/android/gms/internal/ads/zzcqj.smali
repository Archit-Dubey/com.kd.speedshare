.class public final Lcom/google/android/gms/internal/ads/zzcqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzcqg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgju:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzcqf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzcqf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgju:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method

.method public static zzah(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzcqj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Lcom/google/android/gms/internal/ads/zzcqf;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcqj;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqj;-><init>(Lcom/google/android/gms/internal/ads/zzelj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgju:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqf;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcqg;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;)V

    return-object v1
.end method
