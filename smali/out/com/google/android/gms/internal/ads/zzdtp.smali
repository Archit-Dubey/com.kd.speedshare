.class public final Lcom/google/android/gms/internal/ads/zzdtp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# static fields
.field private static final zzhms:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdto;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdto;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhms:Ljava/io/OutputStream;

    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdsh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x2000

    const/4 v3, 0x0

    :goto_e
    const/4 v4, -0x1

    const v5, 0x7ffffff7

    if-ge v3, v5, :cond_37

    sub-int/2addr v5, v3

    .line 15
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    .line 16
    invoke-interface {v0, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v5, :cond_31

    sub-int v8, v5, v7

    .line 19
    invoke-virtual {p0, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v4, :cond_2e

    .line 21
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Ljava/util/Deque;I)[B

    move-result-object p0

    return-object p0

    :cond_2e
    add-int/2addr v7, v8

    add-int/2addr v3, v8

    goto :goto_1f

    :cond_31
    const/4 v4, 0x2

    .line 25
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzdtq;->zzx(II)I

    move-result v2

    goto :goto_e

    .line 26
    :cond_37
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ne p0, v4, :cond_42

    .line 27
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Ljava/util/Deque;I)[B

    move-result-object p0

    return-object p0

    .line 28
    :cond_42
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "input is too large to fit in a byte array"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    goto :goto_4b

    :goto_4a
    throw p0

    :goto_4b
    goto :goto_4a
.end method

.method private static zza(Ljava/util/Deque;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "[B>;I)[B"
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    move v1, p1

    :goto_3
    if-lez v1, :cond_18

    .line 4
    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 5
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, p1, v1

    const/4 v5, 0x0

    .line 7
    invoke-static {v2, v5, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v1, v3

    goto :goto_3

    :cond_18
    return-object v0
.end method
