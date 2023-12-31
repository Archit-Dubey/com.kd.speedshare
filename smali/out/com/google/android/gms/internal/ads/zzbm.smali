.class public abstract Lcom/google/android/gms/internal/ads/zzbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbo;


# static fields
.field private static zzda:Ljava/util/logging/Logger;


# instance fields
.field private zzdb:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/google/android/gms/internal/ads/zzbm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbm;->zzda:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbl;-><init>(Lcom/google/android/gms/internal/ads/zzbm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzekm;Lcom/google/android/gms/internal/ads/zzbs;)Lcom/google/android/gms/internal/ads/zzbp;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v2

    .line 4
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    :goto_1b
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzekm;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-eq v4, v5, :cond_35

    if-ltz v4, :cond_2c

    goto :goto_1b

    .line 8
    :cond_2c
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzekm;->zzfc(J)V

    .line 9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 11
    :cond_35
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbq;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/16 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v9, 0x8

    cmp-long v11, v2, v9

    if-gez v11, :cond_7d

    cmp-long v11, v2, v7

    if-lez v11, :cond_7d

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbm;->zzda:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/16 v5, 0x50

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "). Stop parsing!"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.coremedia.iso.AbstractBoxParser"

    const-string v5, "parseBox"

    invoke-virtual {v0, v1, v3, v5, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 16
    :cond_7d
    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzbq;->zzk(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x10

    const/16 v14, 0x10

    cmp-long v15, v2, v7

    if-nez v15, :cond_c0

    .line 19
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzekm;->read(Ljava/nio/ByteBuffer;)I

    .line 21
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbq;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    sub-long/2addr v2, v12

    goto :goto_d1

    :cond_c0
    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-nez v5, :cond_d0

    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzekm;->size()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v7

    sub-long/2addr v2, v7

    goto :goto_d1

    :cond_d0
    sub-long/2addr v2, v9

    :goto_d1
    const-string v5, "uuid"

    .line 28
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 29
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/2addr v5, v14

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzekm;->read(Ljava/nio/ByteBuffer;)I

    new-array v4, v14, [B

    .line 32
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v14

    :goto_10b
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-ge v5, v7, :cond_139

    .line 33
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v7, v14

    sub-int v7, v5, v7

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10b

    :cond_139
    sub-long/2addr v2, v12

    :cond_13a
    move-wide/from16 v16, v2

    move-object v2, v4

    move-wide/from16 v3, v16

    .line 36
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzbp;

    if-eqz v5, :cond_14b

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbp;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbp;->getType()Ljava/lang/String;

    move-result-object v5

    goto :goto_14d

    :cond_14b
    const-string v5, ""

    :goto_14d
    invoke-virtual {v6, v11, v2, v5}, Lcom/google/android/gms/internal/ads/zzbm;->zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v7

    .line 37
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ads/zzbp;->zza(Lcom/google/android/gms/internal/ads/zzbs;)V

    .line 38
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzbm;->zzdb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/nio/ByteBuffer;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbp;->zza(Lcom/google/android/gms/internal/ads/zzekm;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzbo;)V

    return-object v7
.end method

.method public abstract zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbp;
.end method
