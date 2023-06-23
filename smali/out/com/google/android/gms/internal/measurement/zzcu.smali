.class public final Lcom/google/android/gms/internal/measurement/zzcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/measurement/zzdr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdr<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdr;->zzc()Lcom/google/android/gms/internal/measurement/zzdr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcu;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private static zza(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "com.google.android.gms"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_13

    .line 7
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :catch_13
    :cond_13
    return v0
.end method

.method public static zza(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.phenotype"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    const-string p0, "PhenotypeClientHelper"

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_2e
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdr;->zza()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 13
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdr;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 14
    :cond_43
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcu;->zzb:Ljava/lang/Object;

    monitor-enter p1

    .line 15
    :try_start_46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdr;->zza()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdr;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit p1

    return p0

    :cond_5c
    const-string v0, "com.google.android.gms"

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6b

    :goto_69
    const/4 v0, 0x1

    goto :goto_83

    .line 20
    :cond_6b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.gms.phenotype"

    .line 21
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_82

    const-string v3, "com.google.android.gms"

    .line 22
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_69

    :cond_82
    const/4 v0, 0x0

    :goto_83
    if-eqz v0, :cond_8c

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcu;->zza(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8c

    const/4 v1, 0x1

    :cond_8c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzdr;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdr;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    .line 25
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_46 .. :try_end_97} :catchall_a4

    .line 26
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Lcom/google/android/gms/internal/measurement/zzdr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdr;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_a4
    move-exception p0

    .line 25
    :try_start_a5
    monitor-exit p1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    goto :goto_a8

    :goto_a7
    throw p0

    :goto_a8
    goto :goto_a7
.end method
