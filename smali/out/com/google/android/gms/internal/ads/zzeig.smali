.class final Lcom/google/android/gms/internal/ads/zzeig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final zziia:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeid;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeig;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeig;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeig;->zzc(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    return-object p0
.end method

.method private final zzal(Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 7

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdh()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeig;->zzhm(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeie;->zzhl(I)I

    move-result v1

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v2

    if-lt v2, v1, :cond_2b

    goto :goto_9b

    .line 17
    :cond_2b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeie;->zzhl(I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeer;

    .line 19
    :goto_37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v2

    if-ge v2, v0, :cond_5d

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeer;

    .line 21
    new-instance v4, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    move-object v1, v4

    goto :goto_37

    .line 23
    :cond_5d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    .line 24
    :goto_62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_95

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeig;->zzhm(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeie;->zzhl(I)I

    move-result p1

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v1

    if-ge v1, p1, :cond_95

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeer;

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    move-object v0, v1

    goto :goto_62

    .line 31
    :cond_95
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_a1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeie;

    if-eqz v0, :cond_b4

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeie;

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeig;->zzal(Lcom/google/android/gms/internal/ads/zzeer;)V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeie;->zzb(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    goto/16 :goto_0

    .line 37
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_de

    :goto_dd
    throw v0

    :goto_de
    goto :goto_dd
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeer;
    .registers 5

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeig;->zzal(Lcom/google/android/gms/internal/ads/zzeer;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeig;->zzal(Lcom/google/android/gms/internal/ads/zzeer;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeer;

    .line 6
    :goto_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zziia:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzeer;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    move-object p1, v0

    goto :goto_e

    :cond_26
    return-object p1
.end method

.method private static zzhm(I)I
    .registers 2

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzihs:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_d

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_d
    return p0
.end method
