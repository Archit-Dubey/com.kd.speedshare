.class public final Lcom/google/android/gms/internal/measurement/zzcc$zzk;
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
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzk;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;-><init>()V

    .line 73
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    .line 74
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method private final zza(D)V
    .registers 4

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    .line 38
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzi:D

    return-void
.end method

.method private final zza(J)V
    .registers 4

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzd:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzk;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzl()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzk;D)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zza(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzk;J)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzk;Ljava/lang/String;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzb(J)V
    .registers 4

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzg:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzk;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzm()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzk;J)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzb(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzk;Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzcc$zzk;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzn()V

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;
    .registers 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzcc$zzk;
    .registers 1

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    return-object v0
.end method

.method private final zzl()V
    .registers 2

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzf:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method private final zzm()V
    .registers 3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzg:J

    return-void
.end method

.method private final zzn()V
    .registers 3

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzi:D

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 44
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcb;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6e

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 60
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzk:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 53
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    monitor-enter p2

    .line 54
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzk:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 56
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 57
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzk:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 58
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

    .line 50
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    return-object p1

    :pswitch_33
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    .line 49
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzj:Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_61
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzk$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcb;)V

    return-object p1

    .line 45
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzk;-><init>()V

    return-object p1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_61
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Z
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()J
    .registers 3

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzd:J

    return-wide v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzg:J

    return-wide v0
.end method

.method public final zzh()Z
    .registers 2

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzc:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()D
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzk;->zzi:D

    return-wide v0
.end method
