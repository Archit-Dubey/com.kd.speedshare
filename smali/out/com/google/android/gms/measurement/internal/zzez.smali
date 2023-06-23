.class public final Lcom/google/android/gms/measurement/internal/zzez;
.super Lcom/google/android/gms/measurement/internal/zzgw;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# instance fields
.field private zza:C

.field private zzb:J

.field private zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zze:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzf:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzg:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzfb;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzgd;)V

    const/4 p1, 0x0

    .line 2
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:C

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzb:J

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzd:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzf:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzg:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 8
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzh:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzi:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzj:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzk:Lcom/google/android/gms/measurement/internal/zzfb;

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzez;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzl:Lcom/google/android/gms/measurement/internal/zzfb;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzez;)C
    .registers 1

    .line 145
    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:C

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzez;C)C
    .registers 2

    .line 146
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:C

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzez;J)J
    .registers 3

    .line 148
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzb:J

    return-wide p1
.end method

.method protected static zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    .line 85
    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 86
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 87
    :cond_14
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_98

    if-nez p0, :cond_22

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_22
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_38

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_45

    move-object v0, v2

    .line 93
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_98
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a1

    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_a1
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_f5

    .line 101
    check-cast p1, Ljava/lang/Throwable;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_b4

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_b8

    :cond_b4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b8
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    const-class p0, Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_ca
    if-ge v3, v1, :cond_f0

    aget-object v2, p1, v3

    .line 106
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-nez v4, :cond_ed

    .line 107
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ed

    .line 109
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string p0, ": "

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f0

    :cond_ed
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 115
    :cond_f0
    :goto_f0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_f5
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzfa;

    if-eqz v0, :cond_100

    .line 117
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzfa;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_100
    if-eqz p0, :cond_103

    return-object v2

    .line 120
    :cond_103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    .line 63
    :cond_5
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 65
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 69
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 71
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_30

    .line 72
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 75
    :cond_30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 76
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_3d
    move-object v1, v0

    .line 79
    :goto_3e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 80
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_4a
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzad()Ljava/lang/String;
    .registers 2

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzc:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzs()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzs()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 54
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    const-string v0, "FA"

    .line 58
    :goto_1d
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzc:Ljava/lang/String;

    .line 59
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzc:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    .line 60
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzez;)J
    .registers 3

    .line 147
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzb:J

    return-wide v0
.end method

.method private static zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const/16 v0, 0x2e

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    return-object p0

    :cond_13
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza()V
    .registers 1

    .line 131
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()V

    return-void
.end method

.method protected final zza(ILjava/lang/String;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_10

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 28
    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ILjava/lang/String;)V

    :cond_10
    if-nez p3, :cond_4e

    const/4 p2, 0x5

    if-lt p1, p2, :cond_4e

    .line 32
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzg()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_27

    const-string p1, "Scheduler not set. Not logging error/warn"

    .line 35
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ILjava/lang/String;)V

    return-void

    .line 37
    :cond_27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgw;->zzz()Z

    move-result v1

    if-nez v1, :cond_33

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    .line 38
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ILjava/lang/String;)V

    return-void

    :cond_33
    if-gez p1, :cond_36

    const/4 p1, 0x0

    :cond_36
    const/16 p3, 0x9

    if-lt p1, p3, :cond_3f

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_40

    :cond_3f
    move v2, p1

    .line 45
    :goto_40
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzey;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Lcom/google/android/gms/measurement/internal/zzez;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/Runnable;)V

    :cond_4e
    return-void
.end method

.method protected final zza(I)Z
    .registers 3

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzd()V

    return-void
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzd:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzf:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzg:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzh:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzi:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    .line 135
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzl()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzex;
    .registers 2

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzo()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkw;
    .registers 2

    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzp()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfw;
    .registers 2

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzq()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    .line 142
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 143
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    .line 144
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgw;->zzu()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzj:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzk:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzfb;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzl:Lcom/google/android/gms/measurement/internal/zzfb;

    return-object v0
.end method

.method public final zzy()Ljava/lang/String;
    .registers 5

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzs()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zzb:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 128
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Landroid/util/Pair;

    if-ne v0, v1, :cond_11

    goto :goto_43

    .line 130
    :cond_11
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

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

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    :goto_43
    const/4 v0, 0x0

    return-object v0
.end method
