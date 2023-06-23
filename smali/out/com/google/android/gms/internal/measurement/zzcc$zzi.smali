.class public final Lcom/google/android/gms/internal/measurement/zzcc$zzi;
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
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzi;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

.field private static volatile zzh:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/measurement/zzih;

.field private zzd:Lcom/google/android/gms/internal/measurement/zzih;

.field private zze:Lcom/google/android/gms/internal/measurement/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;-><init>()V

    .line 88
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    .line 89
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzbo()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzbo()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzl()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/lang/Iterable;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    .line 14
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzm()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzi;I)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/lang/Iterable;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzb(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    .line 25
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/lang/Iterable;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzc(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzb;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzn()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzd(I)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzn()V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/lang/Iterable;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzd(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzj;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzo()V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zze(I)V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzo()V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;
    .registers 1

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzi;
    .registers 1

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzcc$zzi;
    .registers 1

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    return-object v0
.end method

.method private final zzl()V
    .registers 2

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzbo()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    return-void
.end method

.method private final zzm()V
    .registers 2

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzbo()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    return-void
.end method

.method private final zzn()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    :cond_e
    return-void
.end method

.method private final zzo()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    :cond_e
    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zzb;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcc$zzb;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 58
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcb;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 74
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzh:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 67
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    monitor-enter p2

    .line 68
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzh:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 70
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 71
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzh:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 72
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

    .line 64
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    return-object p1

    :pswitch_33
    const/4 p1, 0x6

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

    .line 61
    const-class p3, Lcom/google/android/gms/internal/measurement/zzcc$zzb;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 63
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzg:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_5c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcb;)V

    return-object p1

    .line 59
    :pswitch_62
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;-><init>()V

    return-object p1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5c
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzih;->size()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzcc$zzj;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    return-object p1
.end method

.method public final zzc()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public final zzd()I
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzih;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzb;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzf()I
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    return v0
.end method

.method public final zzg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzj;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzh()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    return v0
.end method
