.class public final Lcom/google/android/gms/internal/measurement/zzcc$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zza;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc$zza;-><init>()V

    .line 50
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

    .line 51
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    return-void
.end method

.method private final zza(I)V
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzd:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zza;I)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zza;Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zza;Z)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(Z)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V
    .registers 2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zze:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    return-void
.end method

.method private final zza(Z)V
    .registers 3

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzg:Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcc$zza;Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V
    .registers 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/measurement/zzcc$zza;
    .registers 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcb;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 41
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 34
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    monitor-enter p2

    .line 35
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 39
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

    .line 31
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

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

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    .line 30
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcb;)V

    return-object p1

    .line 26
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;-><init>()V

    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_57
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Z
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzd:I

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzcc$zzi;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zze:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzcc$zzi;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzj()Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzg:Z

    return v0
.end method
