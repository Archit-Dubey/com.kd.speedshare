.class public final Lcom/google/android/gms/internal/ads/zztm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final zzbvo:Lcom/google/android/gms/internal/ads/zztr;

.field private final zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

.field private final zzbvq:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzi;->zznz()Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvq:Z

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zztr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvo:Lcom/google/android/gms/internal/ads/zztr;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztr;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzi;->zznz()Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvo:Lcom/google/android/gms/internal/ads/zztr;

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcte:Lcom/google/android/gms/internal/ads/zzaag;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvq:Z

    return-void
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V
    .registers 4

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzty$zzi$zza;->zzoc()Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztm;->zzna()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzty$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvo:Lcom/google/android/gms/internal/ads/zztr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzty$zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztr;->zzf([B)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztv;->zzbx(I)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->zzdx()V

    const-string v0, "Logging Event with event code : "

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzw()I

    move-result p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_48
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 27
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V
    .registers 5

    monitor-enter p0

    .line 28
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_51

    if-nez v0, :cond_9

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/File;

    const-string v2, "clearcut_events.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_51

    .line 32
    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_4a
    .catchall {:try_start_10 .. :try_end_16} :catchall_51

    .line 33
    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztm;->zzd(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_2f
    .catchall {:try_start_16 .. :try_end_21} :catchall_2d

    .line 34
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_26
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_4a
    .catchall {:try_start_21 .. :try_end_24} :catchall_51

    .line 35
    monitor-exit p0

    return-void

    :catch_26
    :try_start_26
    const-string p1, "Could not close Clearcut output stream."

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_4a
    .catchall {:try_start_26 .. :try_end_2b} :catchall_51

    .line 38
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    goto :goto_40

    :catch_2f
    :try_start_2f
    const-string p1, "Could not write Clearcut to file."

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2d

    .line 41
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_37} :catch_4a
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    .line 42
    monitor-exit p0

    return-void

    :catch_39
    :try_start_39
    const-string p1, "Could not close Clearcut output stream."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3e} :catch_4a
    .catchall {:try_start_39 .. :try_end_3e} :catchall_51

    .line 45
    monitor-exit p0

    return-void

    .line 47
    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_4a
    .catchall {:try_start_40 .. :try_end_43} :catchall_51

    goto :goto_49

    :catch_44
    :try_start_44
    const-string v0, "Could not close Clearcut output stream."

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 51
    :goto_49
    throw p1
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_51

    :catch_4a
    :try_start_4a
    const-string p1, "Could not find file for Clearcut"

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_51

    .line 54
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "id=%s,timestamp=%s,event=%s,data=%s\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzty$zzi$zza;->zznv()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzw()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzty$zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->toByteArray()[B

    move-result-object p1

    const/4 v2, 0x3

    .line 60
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-object p1

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzmz()Lcom/google/android/gms/internal/ads/zztm;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztm;-><init>()V

    return-object v0
.end method

.method private static zzna()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaav;->zzrd()Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_d

    aget-object v5, v2, v4

    .line 72
    :try_start_25
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    const-string v5, "Experiment ID is not a number"

    .line 75
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_35
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V
    .registers 4

    monitor-enter p0

    .line 16
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvq:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzctf:Lcom/google/android/gms/internal/ads/zzaag;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztm;->zzc(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_23

    monitor-exit p0

    return-void

    .line 22
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztm;->zzb(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    .line 23
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztp;)V
    .registers 4

    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvq:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_16

    .line 63
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvp:Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zztp;->zza(Lcom/google/android/gms/internal/ads/zzty$zzi$zza;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_18

    .line 64
    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    .line 66
    :try_start_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v1, "AdMobClearcutLogger.modify"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    .line 67
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
