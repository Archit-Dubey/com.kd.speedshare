.class public final Lcom/google/android/gms/internal/ads/zzbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzn;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzy;->zzam:Ljava/util/Map;

    const-string v4, "Date"

    .line 12
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 14
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbc;->zzg(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_19

    :cond_17
    const-wide/16 v7, 0x0

    :goto_19
    const-string v4, "Cache-Control"

    .line 15
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v4, :cond_88

    const-string v11, ","

    .line 18
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 19
    :goto_2f
    array-length v9, v4

    if-ge v10, v9, :cond_85

    .line 20
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v5, "no-cache"

    .line 21
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    const-string v5, "no-store"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_83

    :cond_49
    const-string v5, "max-age="

    .line 23
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/16 v5, 0x8

    .line 24
    :try_start_53
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_80

    goto :goto_80

    :cond_5c
    const-string v5, "stale-while-revalidate="

    .line 28
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const/16 v5, 0x17

    .line 29
    :try_start_66
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6e} :catch_80

    goto :goto_80

    :cond_6f
    const-string v5, "must-revalidate"

    .line 33
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    const-string v5, "proxy-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_7f
    const/4 v11, 0x1

    :catch_80
    :cond_80
    :goto_80
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_83
    :goto_83
    const/4 v0, 0x0

    return-object v0

    :cond_85
    move v10, v11

    const/4 v9, 0x1

    goto :goto_8d

    :cond_88
    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_8d
    const-string v4, "Expires"

    .line 36
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9c

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbc;->zzg(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_9e

    :cond_9c
    const-wide/16 v4, 0x0

    :goto_9e
    const-string v6, "Last-Modified"

    .line 39
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_af

    .line 41
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbc;->zzg(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v18, v16

    goto :goto_b1

    :cond_af
    const-wide/16 v18, 0x0

    :goto_b1
    const-string v6, "ETag"

    .line 42
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v9, :cond_cc

    const-wide/16 v4, 0x3e8

    mul-long v12, v12, v4

    add-long/2addr v1, v12

    if-eqz v10, :cond_c4

    move-wide v14, v1

    goto :goto_ca

    .line 45
    :cond_c4
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    mul-long v14, v14, v4

    add-long/2addr v14, v1

    :goto_ca
    move-wide v9, v14

    goto :goto_db

    :cond_cc
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_da

    cmp-long v11, v4, v7

    if-ltz v11, :cond_da

    sub-long/2addr v4, v7

    add-long/2addr v1, v4

    move-wide v9, v1

    goto :goto_db

    :cond_da
    move-wide v1, v9

    .line 49
    :goto_db
    new-instance v4, Lcom/google/android/gms/internal/ads/zzn;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzn;-><init>()V

    .line 50
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzy;->data:[B

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzn;->data:[B

    .line 51
    iput-object v6, v4, Lcom/google/android/gms/internal/ads/zzn;->zzr:Ljava/lang/String;

    .line 52
    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzn;->zzv:J

    .line 53
    iput-wide v9, v4, Lcom/google/android/gms/internal/ads/zzn;->zzu:J

    .line 54
    iput-wide v7, v4, Lcom/google/android/gms/internal/ads/zzn;->zzs:J

    move-wide/from16 v1, v18

    .line 55
    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzn;->zzt:J

    .line 56
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzn;->zzw:Ljava/util/Map;

    .line 57
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzy;->allHeaders:Ljava/util/List;

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/zzn;->zzx:Ljava/util/List;

    return-object v4
.end method

.method static zzb(J)Ljava/lang/String;
    .registers 4

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbc;->zzr()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/lang/String;)J
    .registers 4

    .line 59
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbc;->zzr()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unable to parse dateStr: %s, falling back to 0"

    .line 60
    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaq;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static zzr()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 64
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
