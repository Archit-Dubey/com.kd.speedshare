.class final Lcom/google/android/gms/internal/ads/zzcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static zznr:Z = false

.field private static zzns:Ljava/security/MessageDigest;

.field private static final zznt:Ljava/lang/Object;

.field private static final zznu:Ljava/lang/Object;

.field static zznv:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zznt:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zznu:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zznv:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;)Lcom/google/android/gms/internal/ads/zzcf$zza;
    .registers 4

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzar()Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;->zzw()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zza;->zzn(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zza;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zza;

    return-object p0
.end method

.method static synthetic zza(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .registers 1

    .line 111
    sput-object p0, Lcom/google/android/gms/internal/ads/zzcx;->zzns:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static zza([BI)Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    .line 48
    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_2c

    .line 50
    :cond_7
    array-length v0, p0

    const/16 v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    .line 51
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_2b

    mul-int/lit16 v4, v3, 0xff

    .line 54
    :try_start_18
    array-length v5, p0

    sub-int/2addr v5, v4

    if-le v5, v1, :cond_1f

    add-int/lit16 v5, v4, 0xff

    goto :goto_20

    :cond_1f
    array-length v5, p0

    .line 55
    :goto_20
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_27} :catch_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catch_2a
    return-object p1

    :cond_2b
    return-object v2

    :cond_2c
    :goto_2c
    return-object p1
.end method

.method private static zza([BLjava/lang/String;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const/16 v0, 0xef

    goto :goto_7

    :cond_5
    const/16 v0, 0xff

    .line 67
    :goto_7
    array-length v1, p0

    if-le v1, v0, :cond_14

    .line 68
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;->zzju:Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;

    .line 69
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcx;->zza(Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p0

    .line 71
    :cond_14
    array-length v1, p0

    if-ge v1, v0, :cond_3d

    .line 72
    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    .line 73
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v0, v0, 0x1

    .line 74
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p0

    int-to-byte v2, v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_51

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    .line 80
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :goto_51
    const/16 v0, 0x100

    if-eqz p2, :cond_69

    .line 86
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb([B)[B

    move-result-object p2

    .line 87
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 89
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :cond_69
    new-array p2, v0, [B

    .line 94
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdc;-><init>()V

    .line 95
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->zzvo:[Lcom/google/android/gms/internal/ads/zzde;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_75
    if-ge v3, v1, :cond_7f

    aget-object v4, v0, v3

    invoke-interface {v4, p0, p2}, Lcom/google/android/gms/internal/ads/zzde;->zza([B[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_7f
    if-eqz p1, :cond_a1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_93

    .line 99
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_93
    const-string p0, "UTF-8"

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 101
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeee;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzeee;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeee;->zzt([B)V

    :cond_a1
    return-object p2
.end method

.method public static zzb([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zznt:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcx;->zzbq()Ljava/security/MessageDigest;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 107
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 108
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcx;->zzns:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 106
    :cond_17
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot compute hash"

    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1f
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method static zzbp()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zznu:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzcx;->zznr:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    .line 3
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzcx;->zznr:Z

    .line 4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcz;-><init>(Lcom/google/android/gms/internal/ads/zzda;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private static zzbq()Ljava/security/MessageDigest;
    .registers 4

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcx;->zzbp()V

    .line 8
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zznv:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    .line 13
    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcx;->zzns:Ljava/security/MessageDigest;

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    return-object v0
.end method

.method static zzj(Lcom/google/android/gms/internal/ads/zzcf$zza;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p0

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcqo:Lcom/google/android/gms/internal/ads/zzaag;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_50

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfe;->zzzz:Lcom/google/android/gms/internal/ads/zzdwf;

    if-eqz v0, :cond_4a

    if-eqz p1, :cond_23

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_25

    :cond_23
    new-array p1, v1, [B

    .line 25
    :goto_25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfe;->zzzz:Lcom/google/android/gms/internal/ads/zzdwf;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzc([B[B)[B

    move-result-object p0

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzbm()Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object p1

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zzj(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcm;->zzln:Lcom/google/android/gms/internal/ads/zzcm;

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zzb(Lcom/google/android/gms/internal/ads/zzcm;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p0

    goto :goto_a5

    .line 23
    :cond_4a
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p0

    :cond_50
    const/16 v0, 0xff

    .line 33
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzcx;->zza([BI)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 34
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_97

    .line 39
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzbm()Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    move-result-object v3

    .line 40
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 41
    invoke-static {v4, p1, v1}, Lcom/google/android/gms/internal/ads/zzcx;->zza([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zzj(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    goto :goto_67

    .line 44
    :cond_7f
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zzk(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p0

    goto :goto_a5

    .line 35
    :cond_97
    :goto_97
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;->zzju:Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcx;->zza(Lcom/google/android/gms/internal/ads/zzcf$zza$zzd;)Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p0

    .line 38
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzcx;->zza([BLjava/lang/String;Z)[B

    move-result-object p0

    .line 46
    :goto_a5
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzcv;->zza([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
