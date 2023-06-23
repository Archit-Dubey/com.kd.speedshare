.class public Lcom/google/android/gms/internal/ads/zzeki;
.super Lcom/google/android/gms/internal/ads/zzekk;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbp;


# instance fields
.field private type:Ljava/lang/String;

.field private zzawn:J

.field private zzior:Lcom/google/android/gms/internal/ads/zzbs;

.field private zzioz:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeki;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbs;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzior:Lcom/google/android/gms/internal/ads/zzbs;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzekm;JLcom/google/android/gms/internal/ads/zzbo;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeki;->zziox:Lcom/google/android/gms/internal/ads/zzekm;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzipd:J

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzipd:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzioz:Z

    if-nez v2, :cond_1e

    const-wide/16 v2, 0x8

    add-long/2addr v2, p2

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 v2, 0x8

    goto :goto_20

    :cond_1e
    :goto_1e
    const/16 v2, 0x10

    :goto_20
    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzbfs:J

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzekm;->zzfc(J)V

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzasm:J

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzipb:Lcom/google/android/gms/internal/ads/zzbo;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzekm;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzbo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzawn:J

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzioz:Z

    .line 9
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzekk;->zza(Lcom/google/android/gms/internal/ads/zzekm;JLcom/google/android/gms/internal/ads/zzbo;)V

    return-void
.end method
