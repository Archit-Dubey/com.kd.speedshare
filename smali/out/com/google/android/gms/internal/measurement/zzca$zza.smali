.class public final Lcom/google/android/gms/internal/measurement/zzca$zza;
.super Lcom/google/android/gms/internal/measurement/zzib;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzca$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzca$zza;",
        "Lcom/google/android/gms/internal/measurement/zzca$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzca$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzca$zza;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzca$zza;Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzca$zza;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbz;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 29
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 22
    const-class p2, Lcom/google/android/gms/internal/measurement/zzca$zza;

    monitor-enter p2

    .line 23
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzi:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 27
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

    .line 19
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

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

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzca$zza;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzca$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbz;)V

    return-object p1

    .line 14
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzca$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzca$zza;-><init>()V

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

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zze:Z

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzf:Z

    return v0
.end method

.method public final zzd()Z
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzca$zza;->zzg:I

    return v0
.end method
