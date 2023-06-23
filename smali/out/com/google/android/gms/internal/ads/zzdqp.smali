.class public final Lcom/google/android/gms/internal/ads/zzdqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"


# instance fields
.field private final zzvr:Landroid/content/Context;

.field private final zzvv:Lcom/google/android/gms/internal/ads/zzdpm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    return-void
.end method

.method private final zzavj()Ljava/lang/String;
    .registers 7

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "i686"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "armv71"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhlf:Lcom/google/android/gms/internal/ads/zzdsj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsj;->value()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-object v1

    :cond_29
    const-wide/16 v0, 0x0

    const/16 v2, 0x7e8

    .line 27
    :try_start_2d
    const-class v4, Landroid/os/Build;

    const-string v5, "SUPPORTED_ABIS"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_55

    .line 29
    array-length v5, v4

    if-lez v5, :cond_55

    .line 30
    aget-object v0, v4, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2d .. :try_end_43} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_43} :catch_44

    return-object v0

    :catch_44
    move-exception v3

    .line 37
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v4, :cond_55

    .line 38
    invoke-virtual {v4, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_55

    :catch_4d
    move-exception v3

    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v4, :cond_55

    .line 34
    invoke-virtual {v4, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 39
    :cond_55
    :goto_55
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 40
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0

    .line 41
    :cond_5c
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object v0
.end method

.method private final zzavk()Lcom/google/android/gms/internal/ads/zzgo;
    .registers 8

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvr:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0

    .line 45
    :cond_1d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdtr;

    const-string v2, ".*\\.so$"

    const/4 v3, 0x2

    .line 46
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdtr;-><init>(Ljava/util/regex/Pattern;)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 48
    array-length v1, v0

    if-nez v1, :cond_34

    goto/16 :goto_ad

    .line 50
    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_aa

    const/16 v0, 0x14

    :try_start_3e
    new-array v4, v0, [B

    .line 52
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ne v5, v0, :cond_9c

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    const/4 v5, 0x1

    aput-byte v2, v0, v5

    const/4 v6, 0x5

    .line 54
    aget-byte v6, v4, v6

    if-ne v6, v3, :cond_5b

    .line 55
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzdqp;->zzj([B)V

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_a0

    .line 57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_aa

    return-object v0

    :cond_5b
    const/16 v3, 0x13

    .line 59
    :try_start_5d
    aget-byte v3, v4, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x12

    .line 60
    aget-byte v2, v4, v2

    aput-byte v2, v0, v5

    .line 61
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_96

    const/16 v2, 0x28

    if-eq v0, v2, :cond_90

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_8a

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_84

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_a0

    .line 77
    :try_start_80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_aa

    return-object v0

    .line 73
    :cond_84
    :try_start_84
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabu:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_a0

    .line 74
    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_aa

    return-object v0

    .line 67
    :cond_8a
    :try_start_8a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabv:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_a0

    .line 68
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_aa

    return-object v0

    .line 70
    :cond_90
    :try_start_90
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabs:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_a0

    .line 71
    :try_start_92
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_aa

    return-object v0

    .line 64
    :cond_96
    :try_start_96
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabt:Lcom/google/android/gms/internal/ads/zzgo;
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_a0

    .line 65
    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    .line 79
    :cond_9c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9f} :catch_aa

    goto :goto_aa

    :catchall_a0
    move-exception v0

    .line 80
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_a9

    :catchall_a5
    move-exception v1

    :try_start_a6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeea;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a9
    throw v0
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_aa} :catch_aa

    .line 82
    :catch_aa
    :goto_aa
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0

    .line 49
    :cond_ad
    :goto_ad
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0
.end method

.method private final zzj([B)V
    .registers 6

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    if-nez v0, :cond_5

    return-void

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "os.arch:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhlf:Lcom/google/android/gms/internal/ads/zzdsj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsj;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :try_start_1d
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_3f

    const-string v3, "supported_abis:"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1d .. :try_end_3d} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    nop

    :cond_3f
    :goto_3f
    const-string v2, "CPU_ABI:"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CPU_ABI2:"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6a

    const-string v2, "ELF:"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_6a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqp;->zzvv:Lcom/google/android/gms/internal/ads/zzdpm;

    const/16 v1, 0xfa7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzi(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final zzavl()Lcom/google/android/gms/internal/ads/zzgo;
    .registers 3

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqp;->zzavk()Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;

    if-ne v0, v1, :cond_55

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqp;->zzavj()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "i686"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_4c

    :cond_23
    const-string v1, "x86_64"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabv:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0

    :cond_2e
    const-string v1, "arm64-v8a"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabu:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0

    :cond_39
    const-string v1, "armeabi-v7a"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "armv71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 94
    :cond_49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabs:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0

    .line 88
    :cond_4c
    :goto_4c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabt:Lcom/google/android/gms/internal/ads/zzgo;

    return-object v0

    :cond_4f
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqp;->zzj([B)V

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zzabr:Lcom/google/android/gms/internal/ads/zzgo;

    :cond_55
    return-object v0
.end method
