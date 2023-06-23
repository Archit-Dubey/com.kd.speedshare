.class public final Lcom/google/android/gms/internal/ads/zzdrb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# instance fields
.field private final zzclb:Landroid/content/SharedPreferences;

.field private final zzhji:Ljava/io/File;

.field private final zzhjj:Ljava/io/File;

.field private final zzvx:Lcom/google/android/gms/internal/ads/zzgo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pcvmspf"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzclb:Landroid/content/SharedPreferences;

    const-string v0, "pccache"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhji:Ljava/io/File;

    const-string v0, "tmppccache"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzvx:Lcom/google/android/gms/internal/ads/zzgo;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzgr;)Ljava/lang/String;
    .registers 1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeeh;->zzbct()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzavs()Ljava/io/File;
    .registers 4

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhji:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzvx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgo;->zzw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1a
    return-object v0
.end method

.method private final zzavt()Ljava/lang/String;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzvx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgo;->zzw()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FBAMTD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzavu()Ljava/lang/String;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzvx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgo;->zzw()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "LATMTD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzeh(I)Lcom/google/android/gms/internal/ads/zzgr;
    .registers 7

    .line 94
    sget v0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhjs:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_10

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzclb:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavu()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 96
    :cond_10
    sget v0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhjt:I

    if-ne p1, v0, :cond_1f

    .line 97
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzclb:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v1

    .line 98
    :goto_20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-object v1

    .line 101
    :cond_27
    :try_start_27
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzu([B)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzl(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pcam"

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const-string v3, "pcbc"

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_55
    .catch Lcom/google/android/gms/internal/ads/zzegl; {:try_start_27 .. :try_end_55} :catch_5d

    if-eqz v0, :cond_59

    const/4 v0, 0x1

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    if-eqz v0, :cond_5d

    return-object p1

    :catch_5d
    :cond_5d
    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzdrh;)Z
    .registers 11

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzde()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdf()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeer;->toByteArray()[B

    move-result-object v2

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "pcbc"

    const-string v5, "pcam"

    const/4 v6, 0x0

    if-nez v3, :cond_59

    if-eqz v2, :cond_59

    array-length v3, v2

    if-nez v3, :cond_29

    goto :goto_59

    .line 25
    :cond_29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdre;->zze(Ljava/io/File;)Z

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 27
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-static {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v1, :cond_4e

    .line 30
    array-length v7, v1

    if-lez v7, :cond_4e

    .line 31
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/io/File;[B)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_59

    .line 33
    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    .line 34
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/io/File;[B)Z

    move-result v0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v0, 0x0

    :goto_5a
    if-nez v0, :cond_5d

    return v6

    .line 39
    :cond_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7a

    if-eqz p2, :cond_7a

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdrh;->zzb(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_7a

    return v6

    .line 43
    :cond_7a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_bf

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-static {p2, v5, v0}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzhjj:Ljava/io/File;

    invoke-static {p2, v4, v2}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v3

    invoke-static {p2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 50
    :cond_b1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_bf

    const/4 p2, 0x1

    goto :goto_c0

    :cond_bf
    const/4 p2, 0x0

    :goto_c0
    if-eqz p2, :cond_143

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgr;->zzdm()Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p2

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p2

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdk()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzdk(J)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p2

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdl()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzdl(J)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p2

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdj()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzdj(J)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgr;

    .line 60
    sget p2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhjs:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzeh(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p2

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrb;->zzclb:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_131

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_131

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavt()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzgr;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    :cond_131
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavu()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzgr;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_143

    goto :goto_144

    :cond_143
    const/4 v1, 0x0

    .line 69
    :goto_144
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 70
    sget p2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhjs:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzeh(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p2

    if-eqz p2, :cond_158

    .line 72
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_158
    sget p2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhjt:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzeh(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p2

    if-eqz p2, :cond_167

    .line 75
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_167
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 77
    array-length v0, p2

    :goto_170
    if-ge v6, v0, :cond_18c

    aget-object v2, p2, v6

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_189

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdre;->zze(Ljava/io/File;)Z

    :cond_189
    add-int/lit8 v6, v6, 0x1

    goto :goto_170

    :cond_18c
    return v1
.end method

.method public final zzeg(I)Lcom/google/android/gms/internal/ads/zzdrc;
    .registers 7

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzeh(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v2

    const-string v3, "pcopt"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzavs()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcbc"

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzdre;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 18
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Lcom/google/android/gms/internal/ads/zzgr;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v3
.end method
