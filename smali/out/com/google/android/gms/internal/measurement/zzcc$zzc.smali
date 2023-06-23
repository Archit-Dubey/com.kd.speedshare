.class public final Lcom/google/android/gms/internal/measurement/zzcc$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/measurement/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;-><init>()V

    .line 76
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    .line 77
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 4

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzl()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzik;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(J)V
    .registers 4

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzf:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;)V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzm()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;I)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;ILcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zza(ILcom/google/android/gms/internal/measurement/zzcc$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;J)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;Ljava/lang/Iterable;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzc;Ljava/lang/String;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcc$zze;)V
    .registers 3

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzl()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->add(Ljava/lang/Object;)Z

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

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzl()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzb(I)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzl()V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(J)V
    .registers 4

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    .line 42
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzg:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzc;J)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzb(J)V

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;
    .registers 1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzcc$zzc;
    .registers 1

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    return-object v0
.end method

.method private final zzl()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    :cond_e
    return-void
.end method

.method private final zzm()V
    .registers 2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zze;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcc$zze;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 47
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcb;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6e

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 63
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 56
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    monitor-enter p2

    .line 57
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 59
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 60
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 61
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

    .line 53
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

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

    .line 50
    const-class p3, Lcom/google/android/gms/internal/measurement/zzcc$zze;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    .line 52
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_61
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcb;)V

    return-object p1

    .line 48
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzc;-><init>()V

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

.method public final zza()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zze;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzf:J

    return-wide v0
.end method

.method public final zzf()Z
    .registers 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzg:J

    return-wide v0
.end method

.method public final zzh()Z
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzc;->zzh:I

    return v0
.end method
