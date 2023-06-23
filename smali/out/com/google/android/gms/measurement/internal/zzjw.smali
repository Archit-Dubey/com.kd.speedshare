.class public final Lcom/google/android/gms/measurement/internal/zzjw;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field protected final zza:Lcom/google/android/gms/measurement/internal/zzke;

.field protected final zzb:Lcom/google/android/gms/measurement/internal/zzkc;

.field private zzc:Landroid/os/Handler;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzke;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzjw;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzjw;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzjw;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjw;)V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjw;->zzab()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjw;J)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjw;->zzb(J)V

    return-void
.end method

.method private final zzab()V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_12

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Landroid/os/Handler;

    :cond_12
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjw;)Landroid/os/Handler;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Landroid/os/Handler;

    return-object p0
.end method

.method private final zzb(J)V
    .registers 6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjw;->zzab()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzr:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zza()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 16
    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkc;->zza(J)V

    .line 17
    :cond_42
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkb;->zza()V

    goto :goto_60

    .line 18
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkb;->zza()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkc;->zza(J)V

    .line 21
    :cond_60
    :goto_60
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    .line 22
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 23
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjw;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result p2

    if-eqz p2, :cond_98

    .line 24
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8b

    .line 25
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfl;->zzr:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Z)V

    .line 26
    :cond_8b
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zza(JZ)V

    :cond_98
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjw;J)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjw;->zzc(J)V

    return-void
.end method

.method private final zzc(J)V
    .registers 6

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd()V

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjw;->zzab()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkb;->zza(J)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzb(J)V

    .line 34
    :cond_2f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzcc:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result p2

    if-nez p2, :cond_4b

    .line 36
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfl;->zzr:Lcom/google/android/gms/measurement/internal/zzfn;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Z)V

    :cond_4b
    return-void
.end method


# virtual methods
.method final zza(J)J
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzc(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    return-void
.end method

.method public final zza(ZZJ)Z
    .registers 6

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzkc;->zza(ZZJ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhh;
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzis;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzev;
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 2

    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 55
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 56
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 57
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 58
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 60
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 61
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
