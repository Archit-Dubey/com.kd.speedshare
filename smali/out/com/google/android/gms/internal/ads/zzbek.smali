.class public final Lcom/google/android/gms/internal/ads/zzbek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzdh:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/nio/ByteBuffer;)J
    .registers 10

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzdh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v0

    .line 4
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Ljava/nio/ByteBuffer;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbem;->zzekb:Lcom/google/android/gms/internal/ads/zzbem;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbn;-><init>(Lcom/google/android/gms/internal/ads/zzekm;Lcom/google/android/gms/internal/ads/zzbo;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekk;->zzbjd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbp;

    .line 9
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzbr;

    if-eqz v4, :cond_24

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbr;

    goto :goto_39

    :cond_38
    move-object v0, v1

    .line 13
    :goto_39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekk;->zzbjd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbp;

    .line 14
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzbu;

    if-eqz v4, :cond_41

    .line 15
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbu;

    :cond_54
    const-wide/16 v4, 0x3e8

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbu;->getDuration()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbu;->zzs()J

    move-result-wide v0

    div-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzbek;->zzdh:J
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_63} :catch_64
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_63} :catch_64

    return-wide v6

    :catch_64
    return-wide v2
.end method
