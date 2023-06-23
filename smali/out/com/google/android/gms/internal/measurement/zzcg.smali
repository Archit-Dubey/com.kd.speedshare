.class public Lcom/google/android/gms/internal/measurement/zzcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# static fields
.field private static zza:Landroid/os/UserManager;

.field private static volatile zzb:Z

.field private static zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcg;->zza()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Z

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Z
    .registers 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static zza(Landroid/content/Context;)Z
    .registers 2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcg;->zza()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcg;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static zzb(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gt v1, v2, :cond_3b

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Landroid/os/UserManager;

    if-nez v2, :cond_15

    .line 8
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Landroid/os/UserManager;

    .line 9
    :cond_15
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Landroid/os/UserManager;

    if-nez v2, :cond_1a

    return v0

    .line 15
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 16
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_28} :catch_2e

    if-nez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :cond_2c
    :goto_2c
    move v4, v0

    goto :goto_3b

    :catch_2e
    move-exception v2

    const-string v4, "DirectBootUtils"

    const-string v5, "Failed to check if user is unlocked."

    .line 19
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Landroid/os/UserManager;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3b
    :goto_3b
    if-eqz v4, :cond_3f

    .line 23
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Landroid/os/UserManager;

    :cond_3f
    return v4
.end method

.method private static zzc(Landroid/content/Context;)Z
    .registers 4

    .line 25
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 28
    :cond_6
    const-class v0, Lcom/google/android/gms/internal/measurement/zzcg;

    monitor-enter v0

    .line 29
    :try_start_9
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Z

    if-eqz v2, :cond_f

    .line 31
    monitor-exit v0

    return v1

    .line 33
    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcg;->zzb(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 35
    sput-boolean p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Z

    .line 36
    :cond_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw p0
.end method
