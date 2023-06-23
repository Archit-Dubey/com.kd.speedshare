.class public final Lcom/google/android/gms/internal/ads/zzgr;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzgr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzgr;",
        "Lcom/google/android/gms/internal/ads/zzgr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzacg:Lcom/google/android/gms/internal/ads/zzgr;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzgr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzacb:Ljava/lang/String;

.field private zzacc:Ljava/lang/String;

.field private zzacd:J

.field private zzace:J

.field private zzacf:J

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgr;-><init>()V

    .line 56
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    .line 57
    const-class v1, Lcom/google/android/gms/internal/ads/zzgr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacb:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgr;J)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgr;Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzat(Ljava/lang/String;)V

    return-void
.end method

.method private final zzat(Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacb:Ljava/lang/String;

    return-void
.end method

.method private final zzau(Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgr;J)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgr;Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzau(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgr;J)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdi(J)V

    return-void
.end method

.method private final zzdg(J)V
    .registers 4

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacd:J

    return-void
.end method

.method private final zzdh(J)V
    .registers 4

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzace:J

    return-void
.end method

.method private final zzdi(J)V
    .registers 4

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzdw:I

    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacf:J

    return-void
.end method

.method public static zzdm()Lcom/google/android/gms/internal/ads/zzgr$zza;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfc()Lcom/google/android/gms/internal/ads/zzegb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgr$zza;

    return-object v0
.end method

.method public static zzdn()Lcom/google/android/gms/internal/ads/zzgr;
    .registers 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    return-object v0
.end method

.method static synthetic zzdo()Lcom/google/android/gms/internal/ads/zzgr;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzgr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgr;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgs;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgr;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 38
    const-class p2, Lcom/google/android/gms/internal/ads/zzgr;

    monitor-enter p2

    .line 39
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgr;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 42
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgr;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    return-object p1

    :pswitch_33
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzacb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzacc"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzacd"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzace"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzacf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 34
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgr;->zzacg:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzgr;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgr$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgs;)V

    return-object p1

    .line 30
    :pswitch_62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgr;-><init>()V

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

.method public final zzdh()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdi()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdj()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacd:J

    return-wide v0
.end method

.method public final zzdk()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzace:J

    return-wide v0
.end method

.method public final zzdl()J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgr;->zzacf:J

    return-wide v0
.end method
