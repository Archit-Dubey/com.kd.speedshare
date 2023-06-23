.class public abstract Lcom/google/android/gms/internal/ads/zzekg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbp;


# static fields
.field private static zzdc:Lcom/google/android/gms/internal/ads/zzeks;


# instance fields
.field private type:Ljava/lang/String;

.field private zzawn:J

.field private zzior:Lcom/google/android/gms/internal/ads/zzbs;

.field zzios:Z

.field private zziot:Z

.field private zziou:Ljava/nio/ByteBuffer;

.field private zziov:J

.field private zziow:J

.field private zziox:Lcom/google/android/gms/internal/ads/zzekm;

.field private zzioy:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/google/android/gms/internal/ads/zzekg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeks;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekg;->zzdc:Lcom/google/android/gms/internal/ads/zzeks;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziow:J

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzioy:Ljava/nio/ByteBuffer;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->type:Ljava/lang/String;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziot:Z

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzios:Z

    return-void
.end method

.method private final declared-synchronized zzbjb()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziot:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-nez v0, :cond_3a

    .line 2
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekg;->zzdc:Lcom/google/android/gms/internal/ads/zzeks;

    const-string v1, "mem mapping "

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekg;->type:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeks;->zzii(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziox:Lcom/google/android/gms/internal/ads/zzekm;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziov:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziow:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzekm;->zzh(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziou:Ljava/nio/ByteBuffer;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2f} :catch_33
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3c

    const/4 v0, 0x1

    .line 9
    :try_start_30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziot:Z

    goto :goto_3a

    :catch_33
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3c

    .line 10
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbs;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzior:Lcom/google/android/gms/internal/ads/zzbs;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzekm;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzbo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziov:J

    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzawn:J

    .line 20
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziow:J

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziox:Lcom/google/android/gms/internal/ads/zzekm;

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzekm;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzekm;->zzfc(J)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziot:Z

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzios:Z

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekg;->zzbjc()V

    return-void
.end method

.method public final declared-synchronized zzbjc()V
    .registers 5

    monitor-enter p0

    .line 27
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekg;->zzbjb()V

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekg;->zzdc:Lcom/google/android/gms/internal/ads/zzeks;

    const-string v1, "parsing details of "

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekg;->type:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeks;->zzii(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziou:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_40

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziou:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzios:Z

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzekg;->zzl(Ljava/nio/ByteBuffer;)V

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3d

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zzioy:Ljava/nio/ByteBuffer;

    :cond_3d
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zziou:Ljava/nio/ByteBuffer;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 39
    :cond_40
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract zzl(Ljava/nio/ByteBuffer;)V
.end method
