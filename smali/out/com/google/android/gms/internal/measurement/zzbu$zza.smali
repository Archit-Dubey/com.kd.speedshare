.class public final Lcom/google/android/gms/internal/measurement/zzbu$zza;
.super Lcom/google/android/gms/internal/measurement/zzib;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzbu$zza;",
        "Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzbu$zza;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zza;-><init>()V

    .line 52
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zza;

    .line 53
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzbp()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzbu$zzb;)V
    .registers 5

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v1

    if-nez v1, :cond_11

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    .line 27
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzik;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzbu$zze;)V
    .registers 5

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v1

    if-nez v1, :cond_11

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    .line 16
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzik;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbu$zza;ILcom/google/android/gms/internal/measurement/zzbu$zzb;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbu$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbu$zza;ILcom/google/android/gms/internal/measurement/zzbu$zze;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbu$zze;)V

    return-void
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/measurement/zzbu$zza;
    .registers 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zza;

    return-object v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbu$zze;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbu$zze;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbt;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_74

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 45
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 38
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    monitor-enter p2

    .line 39
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 42
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 43
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

    .line 35
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zza;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

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

    .line 32
    const-class p3, Lcom/google/android/gms/internal/measurement/zzbu$zze;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    .line 34
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbt;)V

    return-object p1

    .line 30
    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbu$zza;-><init>()V

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzc:I

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

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzd:I

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzbu$zzb;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    return-object p1
.end method

.method public final zzc()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zze;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzd()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zze:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zzb;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0
.end method

.method public final zzf()I
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    return v0
.end method
