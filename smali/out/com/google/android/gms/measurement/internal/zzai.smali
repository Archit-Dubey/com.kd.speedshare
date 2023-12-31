.class public final Lcom/google/android/gms/measurement/internal/zzai;
.super Lcom/google/android/gms/measurement/internal/zzgw;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field private zza:J

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Boolean;

.field private zzd:Landroid/accounts/AccountManager;

.field private zze:Ljava/lang/Boolean;

.field private zzf:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()V
    .registers 1

    .line 66
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()V

    return-void
.end method

.method public final zza(Landroid/content/Context;)Z
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Boolean;

    if-nez v0, :cond_22

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Boolean;

    .line 20
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string v0, "com.google.android.gms"

    const/16 v1, 0x80

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p1, 0x1

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Boolean;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_22} :catch_22

    .line 26
    :catch_22
    :cond_22
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 67
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 68
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 69
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzd()V

    return-void
.end method

.method protected final zze()Z
    .registers 5

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:J

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()J
    .registers 3

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzaa()V

    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzaa()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final zzh()J
    .registers 3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 28
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J

    return-wide v0
.end method

.method final zzi()V
    .registers 3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J

    return-void
.end method

.method final zzj()Z
    .registers 10

    const-string v0, "com.google"

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 35
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J

    sub-long v3, v1, v3

    const/4 v5, 0x0

    const-wide/32 v6, 0x5265c00

    cmp-long v8, v3, v6

    if-lez v8, :cond_1b

    .line 36
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    .line 37
    :cond_1b
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    if-eqz v3, :cond_24

    .line 38
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 39
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.GET_ACCOUNTS"

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzj()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    const-string v3, "Permission error checking for dasher/unicorn accounts"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;)V

    .line 41
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J

    .line 42
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    return v4

    .line 44
    :cond_47
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:Landroid/accounts/AccountManager;

    if-nez v3, :cond_55

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzn()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:Landroid/accounts/AccountManager;

    .line 46
    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:Landroid/accounts/AccountManager;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "service_HOSTED"

    aput-object v8, v7, v4

    .line 47
    invoke-virtual {v3, v0, v7, v5, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    .line 48
    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    if-eqz v3, :cond_76

    .line 49
    array-length v3, v3

    if-lez v3, :cond_76

    .line 50
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    .line 51
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J

    return v6

    .line 53
    :cond_76
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:Landroid/accounts/AccountManager;

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "service_uca"

    aput-object v8, v7, v4

    .line 54
    invoke-virtual {v3, v0, v7, v5, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-eqz v0, :cond_a8

    .line 56
    array-length v0, v0

    if-lez v0, :cond_a8

    .line 57
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    .line 58
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J
    :try_end_95
    .catch Landroid/accounts/AuthenticatorException; {:try_start_55 .. :try_end_95} :catch_9a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_95} :catch_98
    .catch Landroid/accounts/OperationCanceledException; {:try_start_55 .. :try_end_95} :catch_96

    return v6

    :catch_96
    move-exception v0

    goto :goto_9b

    :catch_98
    move-exception v0

    goto :goto_9b

    :catch_9a
    move-exception v0

    .line 62
    :goto_9b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzg()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v3

    const-string v5, "Exception checking account types"

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_a8
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:J

    .line 64
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Ljava/lang/Boolean;

    return v4
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 74
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 75
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 76
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 78
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 79
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method
