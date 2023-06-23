.class final Lcom/google/android/gms/internal/ads/zzdmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final maxEntries:I

.field private final zzhcm:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzdmw<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzhcn:I

.field private final zzhco:Lcom/google/android/gms/internal/ads/zzdnj;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->maxEntries:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcn:I

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdnj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    return-void
.end method

.method private final zzate()V
    .registers 6

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmw;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhee:J

    sub-long/2addr v1, v3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcn:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_32

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatw()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_32
    return-void
.end method


# virtual methods
.method public final getCreationTimeMillis()J
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->getCreationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final size()I
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzate()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final zzasz()Lcom/google/android/gms/internal/ads/zzdmw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdmw<",
            "*>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatu()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzate()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmw;

    if-eqz v0, :cond_21

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatv()V

    :cond_21
    return-object v0
.end method

.method public final zzata()J
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzata()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzatb()I
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatb()I

    move-result v0

    return v0
.end method

.method public final zzatc()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzatd()Lcom/google/android/gms/internal/ads/zzdnm;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatx()Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdmw;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdmw<",
            "*>;)Z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhco:Lcom/google/android/gms/internal/ads/zzdnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzatu()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzate()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->maxEntries:I

    if-ne v0, v1, :cond_14

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzhcm:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
