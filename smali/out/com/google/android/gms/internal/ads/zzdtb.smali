.class final Lcom/google/android/gms/internal/ads/zzdtb;
.super Lcom/google/android/gms/internal/ads/zzdtn;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdtn<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzhmd:Z

.field private final synthetic zzhme:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzhme:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtn;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzhmd:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzhmd:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzhmd:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzhme:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
