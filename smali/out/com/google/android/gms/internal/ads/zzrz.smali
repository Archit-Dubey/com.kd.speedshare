.class public final Lcom/google/android/gms/internal/ads/zzrz;
.super Lcom/google/android/gms/internal/ads/zzro;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzbtz:Ljava/security/MessageDigest;

.field private final zzbug:I

.field private final zzbuh:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzro;-><init>()V

    .line 2
    div-int/lit8 v0, p1, 0x8

    .line 3
    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_b
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbug:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbuh:I

    return-void
.end method


# virtual methods
.method public final zzbs(Ljava/lang/String;)[B
    .registers 11

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzro;->zzmm()Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbtz:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    new-array p1, v2, [B

    .line 11
    monitor-exit v0

    return-object p1

    .line 12
    :cond_10
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbtz:Ljava/security/MessageDigest;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbtz:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 15
    array-length v1, p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbug:I

    if-le v1, v3, :cond_30

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbug:I

    goto :goto_31

    :cond_30
    array-length v1, p1

    :goto_31
    new-array v3, v1, [B

    .line 16
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbuh:I

    const/16 v4, 0x8

    rem-int/2addr p1, v4

    if-lez p1, :cond_65

    const-wide/16 v5, 0x0

    :goto_3f
    if-ge v2, v1, :cond_4d

    if-lez v2, :cond_44

    shl-long/2addr v5, v4

    .line 22
    :cond_44
    aget-byte p1, v3, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v7, p1

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 24
    :cond_4d
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbuh:I

    rem-int/2addr p1, v4

    rsub-int/lit8 p1, p1, 0x8

    ushr-long v1, v5, p1

    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbug:I

    add-int/lit8 p1, p1, -0x1

    :goto_58
    if-ltz p1, :cond_65

    const-wide/16 v5, 0xff

    and-long/2addr v5, v1

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 27
    aput-byte v5, v3, p1

    ushr-long/2addr v1, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_58

    .line 30
    :cond_65
    monitor-exit v0

    return-object v3

    :catchall_67
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    goto :goto_6b

    :goto_6a
    throw p1

    :goto_6b
    goto :goto_6a
.end method
