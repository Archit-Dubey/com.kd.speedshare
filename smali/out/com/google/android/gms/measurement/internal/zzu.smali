.class final Lcom/google/android/gms/measurement/internal/zzu;
.super Lcom/google/android/gms/measurement/internal/zzv;
.source "com.google.android.gms:play-services-measurement@@17.4.4"


# instance fields
.field private zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbu$zze;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzb()I

    move-result v0

    return v0
.end method

.method final zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzcc$zzk;Z)Z
    .registers 15

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaq;->zzbd:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 11
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 13
    :goto_1b
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zze()Z

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzf()Z

    move-result v4

    .line 15
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzh()Z

    move-result v5

    if-nez v3, :cond_36

    if-nez v4, :cond_36

    if-eqz v5, :cond_34

    goto :goto_36

    :cond_34
    const/4 v3, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v3, 0x1

    :goto_37
    const/4 v4, 0x0

    if-eqz p4, :cond_64

    if-nez v3, :cond_64

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:I

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zza()Z

    move-result p3

    if-eqz p3, :cond_5e

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_5e
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 22
    invoke-virtual {p1, p3, p2, v4}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    .line 24
    :cond_64
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzd()Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzf()Z

    move-result v7

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzf()Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc()Z

    move-result v8

    if-nez v8, :cond_99

    .line 29
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzex;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    .line 32
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_189

    .line 35
    :cond_99
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzg()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lcom/google/android/gms/measurement/internal/zzu;->zza(JLcom/google/android/gms/internal/measurement/zzbu$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    .line 36
    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_189

    .line 37
    :cond_ab
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzh()Z

    move-result v8

    if-eqz v8, :cond_e8

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc()Z

    move-result v8

    if-nez v8, :cond_d6

    .line 39
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzex;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    .line 42
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_189

    .line 45
    :cond_d6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzi()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lcom/google/android/gms/measurement/internal/zzu;->zza(DLcom/google/android/gms/internal/measurement/zzbu$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    .line 46
    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_189

    .line 47
    :cond_e8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzd()Z

    move-result v8

    if-eqz v8, :cond_16c

    .line 48
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zza()Z

    move-result v8

    if-nez v8, :cond_155

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc()Z

    move-result v8

    if-nez v8, :cond_118

    .line 50
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 52
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzex;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    .line 53
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_189

    .line 54
    :cond_118
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 56
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbu$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    .line 57
    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_189

    .line 58
    :cond_133
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzex;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    .line 62
    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_189

    .line 65
    :cond_155
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzbu$zzf;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v8

    invoke-static {v4, v6, v8}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbu$zzf;Lcom/google/android/gms/measurement/internal/zzez;)Ljava/lang/Boolean;

    move-result-object v4

    .line 66
    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_189

    .line 67
    :cond_16c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzi()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 69
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzex;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    .line 70
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_189
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v6

    if-nez v4, :cond_198

    const-string v7, "null"

    goto :goto_199

    :cond_198
    move-object v7, v4

    :goto_199
    const-string v8, "Property filter result"

    .line 75
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_1a1

    return v1

    .line 78
    :cond_1a1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    if-eqz v5, :cond_1b0

    .line 79
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1b0

    return v2

    :cond_1b0
    if-eqz p4, :cond_1ba

    .line 81
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zze()Z

    move-result p4

    if-eqz p4, :cond_1bc

    .line 82
    :cond_1ba
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    .line 83
    :cond_1bc
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_201

    if-eqz v3, :cond_201

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zza()Z

    move-result p4

    if-eqz p4, :cond_201

    .line 85
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzb()J

    move-result-wide p3

    if-eqz p1, :cond_1d4

    .line 87
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_1d4
    if-eqz v0, :cond_1ec

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zze()Z

    move-result p1

    if-eqz p1, :cond_1ec

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzf()Z

    move-result p1

    if-nez p1, :cond_1ec

    if-eqz p2, :cond_1ec

    .line 90
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 91
    :cond_1ec
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1fb

    .line 92
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    goto :goto_201

    .line 93
    :cond_1fb
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    :cond_201
    :goto_201
    return v2
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzc()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
