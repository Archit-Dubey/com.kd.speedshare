.class public final Lcom/google/android/gms/internal/ads/zzrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzbtt:I

.field private final zzbtu:I

.field private final zzbtv:I

.field private final zzbtw:Lcom/google/android/gms/internal/ads/zzro;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtw:Lcom/google/android/gms/internal/ads/zzro;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtu:I

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtt:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtv:I

    return-void
.end method

.method private final zzbt(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "\n"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    array-length v0, p1

    if-nez v0, :cond_c

    const-string p1, ""

    return-object p1

    .line 17
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrt;-><init>()V

    .line 19
    new-instance v1, Ljava/util/PriorityQueue;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtu:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzrq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Lcom/google/android/gms/internal/ads/zzrr;)V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 20
    :goto_1f
    array-length v4, p1

    if-ge v3, v4, :cond_35

    .line 21
    aget-object v4, p1, v3

    .line 22
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzrs;->zzd(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 24
    array-length v5, v4

    if-eqz v5, :cond_32

    .line 25
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtu:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtt:I

    invoke-static {v4, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzrx;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 27
    :cond_35
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrw;

    .line 28
    :try_start_45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtw:Lcom/google/android/gms/internal/ads/zzro;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrw;->zzbua:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzro;->zzbs(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrt;->write([B)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_50} :catch_51

    goto :goto_39

    :catch_51
    move-exception p1

    const-string v1, "Error while writing hash to byteStream"

    .line 31
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrt;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_25

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 13
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrr;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
