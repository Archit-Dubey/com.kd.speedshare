.class final Lcom/google/android/gms/internal/ads/zzeii;
.super Ljava/io/InputStream;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private mark:I

.field private final synthetic zzihr:Lcom/google/android/gms/internal/ads/zzeie;

.field private zziib:Lcom/google/android/gms/internal/ads/zzeif;

.field private zziic:Lcom/google/android/gms/internal/ads/zzeey;

.field private zziid:I

.field private zziie:I

.field private zziif:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeie;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzihr:Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeii;->initialize()V

    return-void
.end method

.method private final initialize()V
    .registers 4

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeif;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzihr:Lcom/google/android/gms/internal/ads/zzeie;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziib:Lcom/google/android/gms/internal/ads/zzeif;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeif;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeey;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziid:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    .line 46
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziif:I

    return-void
.end method

.method private final zzbhd()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziid:I

    if-ne v0, v1, :cond_30

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziif:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziif:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziib:Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeif;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziib:Lcom/google/android/gms/internal/ads/zzeif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeif;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeey;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziid:I

    return-void

    :cond_2b
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    .line 55
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziid:I

    :cond_30
    return-void
.end method

.method private final zzl([BII)I
    .registers 8

    move v0, p3

    :goto_1
    if-lez v0, :cond_24

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeii;->zzbhd()V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    if-eqz v1, :cond_24

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziid:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    sub-int/2addr v1, v2

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1d

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zza([BIII)V

    add-int/2addr p2, v1

    .line 26
    :cond_1d
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_24
    sub-int/2addr p3, v0

    return p3
.end method


# virtual methods
.method public final available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziif:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    add-int/2addr v0, v1

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzihr:Lcom/google/android/gms/internal/ads/zzeie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final mark(I)V
    .registers 3

    .line 37
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziif:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->mark:I

    return-void
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeii;->zzbhd()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziic:Lcom/google/android/gms/internal/ads/zzeey;

    if-nez v0, :cond_9

    const/4 v0, -0x1

    return v0

    .line 33
    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zziie:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeer;->zzft(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .registers 5

    if-eqz p1, :cond_18

    if-ltz p2, :cond_12

    if-ltz p3, :cond_12

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_12

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeii;->zzl([BII)I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, -0x1

    :cond_11
    return p1

    .line 7
    :cond_12
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_18
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 39
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeii;->initialize()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeii;->mark:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeii;->zzl([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 41
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    .line 16
    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzeii;->zzl([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 13
    :cond_17
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
