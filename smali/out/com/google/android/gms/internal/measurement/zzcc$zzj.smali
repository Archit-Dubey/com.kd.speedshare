.class public final Lcom/google/android/gms/internal/measurement/zzcc$zzj;
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
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzj;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzih;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;-><init>()V

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    .line 44
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzbo()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzj;I)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcc$zzj;Ljava/lang/Iterable;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zza(Ljava/lang/Iterable;)V

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

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    .line 17
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzb(I)V
    .registers 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzc:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzd:I

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;
    .registers 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzcc$zzj;
    .registers 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    return-object v0
.end method


# virtual methods
.method public final zza(I)J
    .registers 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcb;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 36
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzg:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 29
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    monitor-enter p2

    .line 30
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzg:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 32
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 33
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzg:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 34
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

    .line 26
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 25
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzf:Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzcb;)V

    return-object p1

    .line 21
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Z
    .registers 3

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzc:I

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

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zzd:I

    return v0
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

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public final zzd()I
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzih;->size()I

    move-result v0

    return v0
.end method
