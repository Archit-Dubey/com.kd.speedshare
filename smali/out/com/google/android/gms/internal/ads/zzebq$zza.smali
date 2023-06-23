.class public final Lcom/google/android/gms/internal/ads/zzebq$zza;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzebq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzebq$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzebq$zza;",
        "Lcom/google/android/gms/internal/ads/zzebq$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzebq$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;


# instance fields
.field private zzhuo:Ljava/lang/String;

.field private zzhvf:I

.field private zzhvq:I

.field private zzhvr:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebq$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebq$zza;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/zzebq$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhuo:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzebg;)V
    .registers 2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzebg;->zzw()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebq$zza;I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzfg(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebq$zza;Lcom/google/android/gms/internal/ads/zzebg;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebq$zza;->zza(Lcom/google/android/gms/internal/ads/zzebg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebq$zza;Lcom/google/android/gms/internal/ads/zzebz;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebq$zza;->zza(Lcom/google/android/gms/internal/ads/zzebz;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebq$zza;Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhn(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzebz;)V
    .registers 2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzebz;->zzw()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvf:I

    return-void
.end method

.method public static zzbbo()Lcom/google/android/gms/internal/ads/zzebq$zza$zza;
    .registers 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfc()Lcom/google/android/gms/internal/ads/zzegb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebq$zza$zza;

    return-object v0
.end method

.method static synthetic zzbbp()Lcom/google/android/gms/internal/ads/zzebq$zza;
    .registers 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;

    return-object v0
.end method

.method private final zzfg(I)V
    .registers 2

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvr:I

    return-void
.end method

.method private final zzhn(Ljava/lang/String;)V
    .registers 2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhuo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzebp;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 30
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 23
    const-class p2, Lcom/google/android/gms/internal/ads/zzebq$zza;

    monitor-enter p2

    .line 24
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 28
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

    .line 20
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhuo"

    aput-object v0, p1, p2

    const-string p2, "zzhvq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhvr"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhvf"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 19
    sget-object p3, Lcom/google/android/gms/internal/ads/zzebq$zza;->zzhvv:Lcom/google/android/gms/internal/ads/zzebq$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzebq$zza;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebq$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzebq$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzebp;)V

    return-object p1

    .line 15
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebq$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzebq$zza;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
