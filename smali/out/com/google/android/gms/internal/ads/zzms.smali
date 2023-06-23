.class final Lcom/google/android/gms/internal/ads/zzms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzow;


# instance fields
.field private final uri:Landroid/net/Uri;

.field private final zzaoh:Lcom/google/android/gms/internal/ads/zzok;

.field private final synthetic zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

.field private final zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

.field private final zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

.field private final zzbef:Lcom/google/android/gms/internal/ads/zzkd;

.field private volatile zzbeg:Z

.field private zzbeh:Z

.field private zzbei:J

.field private zzcp:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmp;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzok;Lcom/google/android/gms/internal/ads/zzmv;Lcom/google/android/gms/internal/ads/zzpd;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzpb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->uri:Landroid/net/Uri;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzpb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzok;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzpb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzkd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzkd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbef:Lcom/google/android/gms/internal/ads/zzkd;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeh:Z

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzcp:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzms;)J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzcp:J

    return-wide v0
.end method


# virtual methods
.method public final cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeg:Z

    return-void
.end method

.method public final zze(JJ)V
    .registers 6

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbef:Lcom/google/android/gms/internal/ads/zzkd;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzkd;->position:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbei:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeh:Z

    return-void
.end method

.method public final zzhw()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeg:Z

    return v0
.end method

.method public final zzhx()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_b4

    .line 18
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeg:Z

    if-nez v2, :cond_b4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 20
    :try_start_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbef:Lcom/google/android/gms/internal/ads/zzkd;

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzkd;->position:J

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzms;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzop;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzms;->uri:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzmp;->zzf(Lcom/google/android/gms/internal/ads/zzmp;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v14

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzop;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v4, v14}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzop;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzms;->zzcp:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_30

    add-long/2addr v4, v12

    .line 23
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzms;->zzcp:J

    .line 24
    :cond_30
    new-instance v4, Lcom/google/android/gms/internal/ads/zzju;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzms;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzms;->zzcp:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzok;JJ)V
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_a1

    .line 25
    :try_start_3b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdl:Lcom/google/android/gms/internal/ads/zzmv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzok;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzmv;->zza(Lcom/google/android/gms/internal/ads/zzjw;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzjx;

    move-result-object v2

    .line 26
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeh:Z

    if-eqz v5, :cond_52

    .line 27
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbei:J

    invoke-interface {v2, v12, v13, v5, v6}, Lcom/google/android/gms/internal/ads/zzjx;->zzc(JJ)V

    .line 28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeh:Z

    :cond_52
    :goto_52
    if-nez v1, :cond_8b

    .line 29
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeg:Z

    if-nez v5, :cond_8b

    .line 30
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpd;->block()V

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbef:Lcom/google/android/gms/internal/ads/zzkd;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzjx;->zza(Lcom/google/android/gms/internal/ads/zzjw;Lcom/google/android/gms/internal/ads/zzkd;)I

    move-result v1

    .line 32
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzmp;->zzg(Lcom/google/android/gms/internal/ads/zzmp;)J

    move-result-wide v7

    add-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-lez v9, :cond_52

    .line 33
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v12

    .line 34
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdm:Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpd;->zzit()Z

    .line 35
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzmp;->zzi(Lcom/google/android/gms/internal/ads/zzmp;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdd:Lcom/google/android/gms/internal/ads/zzmp;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzmp;->zzh(Lcom/google/android/gms/internal/ads/zzmp;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8a
    .catchall {:try_start_3b .. :try_end_8a} :catchall_9e

    goto :goto_52

    :cond_8b
    if-ne v1, v3, :cond_8f

    const/4 v1, 0x0

    goto :goto_97

    .line 38
    :cond_8f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbef:Lcom/google/android/gms/internal/ads/zzkd;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzkd;->position:J

    .line 39
    :goto_97
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzms;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpo;->zza(Lcom/google/android/gms/internal/ads/zzok;)V

    goto/16 :goto_2

    :catchall_9e
    move-exception v0

    move-object v2, v4

    goto :goto_a2

    :catchall_a1
    move-exception v0

    :goto_a2
    if-eq v1, v3, :cond_ae

    if-eqz v2, :cond_ae

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbef:Lcom/google/android/gms/internal/ads/zzkd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzkd;->position:J

    .line 45
    :cond_ae
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzaoh:Lcom/google/android/gms/internal/ads/zzok;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpo;->zza(Lcom/google/android/gms/internal/ads/zzok;)V

    .line 46
    throw v0

    :cond_b4
    return-void
.end method
