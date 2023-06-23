.class public final Lcom/google/android/gms/internal/measurement/zzbu$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbu$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzbu$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzbu$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/measurement/zzbu$zzf;

.field private zze:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

.field private zzf:Z

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzbu$zzc;Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzbu$zzc;
    .registers 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzbu$zzc;
    .registers 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbt;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 32
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 25
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    monitor-enter p2

    .line 26
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 30
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

    .line 22
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

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

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzh:Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbu$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbt;)V

    return-object p1

    .line 17
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzc;-><init>()V

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

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzbu$zzf;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzbu$zzf;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zzf;->zzi()Lcom/google/android/gms/internal/measurement/zzbu$zzf;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzbu$zzd;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zze:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzk()Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zze()Z
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzf:Z

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzc;->zzg:Ljava/lang/String;

    return-object v0
.end method
