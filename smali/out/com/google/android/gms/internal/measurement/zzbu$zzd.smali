.class public final Lcom/google/android/gms/internal/measurement/zzbu$zzd;
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
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbu$zzd$zza;,
        Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzbu$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzbu$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzjw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjw<",
            "Lcom/google/android/gms/internal/measurement/zzbu$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zzd;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzib;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzf:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzbu$zzd;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    return-object v0
.end method

.method static synthetic zzl()Lcom/google/android/gms/internal/measurement/zzbu$zzd;
    .registers 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbt;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_70

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 34
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2f

    .line 27
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    monitor-enter p2

    .line 28
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    if-nez p1, :cond_2a

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzib$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjw;

    .line 32
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

    .line 24
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

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

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;->zzb()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p3

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

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    .line 23
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_63
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbu$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zzd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbt;)V

    return-object p1

    .line 18
    :pswitch_69
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbu$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzd;-><init>()V

    return-object p1

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_69
        :pswitch_63
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Z
    .registers 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;

    move-result-object v0

    if-nez v0, :cond_a

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbu$zzd$zzb;

    :cond_a
    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zze:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzc:I

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

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .registers 2

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzd;->zzh:Ljava/lang/String;

    return-object v0
.end method
