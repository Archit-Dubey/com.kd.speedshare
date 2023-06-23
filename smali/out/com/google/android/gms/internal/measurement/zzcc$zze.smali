.class public final Lcom/google/android/gms/internal/measurement/zzcc$zze;
.super Lcom/google/android/gms/internal/measurement/zzib;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:F

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;-><init>()V

    .line 90
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    .line 91
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcc$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zze:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method

.method private final zza(D)V
    .registers 4

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzh:D

    return-void
.end method

.method private final zza(J)V
    .registers 4

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzf:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzo()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;D)V
    .registers 3

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zza(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;J)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zze(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;Ljava/lang/Iterable;)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzs()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzp()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zze;Ljava/lang/String;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzq()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzt()V

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 3

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzs()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static zzm()Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;
    .registers 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;

    return-object v0
.end method

.method static synthetic zzn()Lcom/google/android/gms/internal/measurement/zzcc$zze;
    .registers 1

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    return-object v0
.end method

.method private final zzo()V
    .registers 2

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zze:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzp()V
    .registers 3

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzf:J

    return-void
.end method

.method private final zzq()V
    .registers 3

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzh:D

    return-void
.end method

.method private final zzs()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    :cond_e
    return-void
.end method

.method private final zzt()V
    .registers 2

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 59
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcc$zze;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcb;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_72

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p3

    .line 75
    :pswitch_13
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 68
    monitor-enter p2

    .line 69
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 71
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 72
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzk:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 73
    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    .line 65
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzc"

    aput-object v1, p1, p3

    const-string p3, "zzd"

    aput-object p3, p1, v0

    const/4 p3, 0x2

    const-string v0, "zze"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "zzg"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "zzh"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 64
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_65
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzcc$zze$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcb;)V

    return-object p1

    .line 60
    :pswitch_6b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcc$zze;-><init>()V

    return-object p1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_65
        :pswitch_33
        :pswitch_30
        :pswitch_18
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public final zza()Z
    .registers 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Z
    .registers 2

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzf:J

    return-wide v0
.end method

.method public final zzg()Z
    .registers 2

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()F
    .registers 2

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzg:F

    return v0
.end method

.method public final zzi()Z
    .registers 2

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()D
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzh:D

    return-wide v0
.end method

.method public final zzk()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzl()I
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zze;->zzi:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    return v0
.end method
