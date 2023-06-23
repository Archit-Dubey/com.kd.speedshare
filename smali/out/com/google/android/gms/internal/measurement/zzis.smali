.class public Lcom/google/android/gms/internal/measurement/zzis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzho;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/zzgt;

.field private volatile zzc:Lcom/google/android/gms/internal/measurement/zzjj;

.field private volatile zzd:Lcom/google/android/gms/internal/measurement/zzgt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzho;->zza()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzis;->zza:Lcom/google/android/gms/internal/measurement/zzho;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_1d

    .line 19
    monitor-enter p0

    .line 20
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_b

    .line 21
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    .line 22
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgt;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;
    :try_end_11
    .catch Lcom/google/android/gms/internal/measurement/zzij; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    .line 26
    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgt;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    .line 28
    :goto_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1

    .line 29
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzis;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzis;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->h_()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzis;->zzb(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzjj;->h_()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzis;->zzb(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:Lcom/google/android/gms/internal/measurement/zzgt;

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgt;->zza()I

    move-result v0

    return v0

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbm()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzgt;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    return-object v0

    .line 42
    :cond_7
    monitor-enter p0

    .line 43
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    if-eqz v0, :cond_10

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    monitor-exit p0

    return-object v0

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_19

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgt;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    goto :goto_21

    .line 47
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbh()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    .line 48
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:Lcom/google/android/gms/internal/measurement/zzgt;

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 49
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method
