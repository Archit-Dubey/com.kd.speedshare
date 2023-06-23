.class public final Lcom/google/android/gms/internal/ads/zzeca;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeca$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzeca;",
        "Lcom/google/android/gms/internal/ads/zzeca$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzeca;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwo:Lcom/google/android/gms/internal/ads/zzeca;


# instance fields
.field private zzhwm:Ljava/lang/String;

.field private zzhwn:Lcom/google/android/gms/internal/ads/zzegm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegm<",
            "Lcom/google/android/gms/internal/ads/zzebm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeca;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeca;->zzhwo:Lcom/google/android/gms/internal/ads/zzeca;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzeca;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzhwm:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeca;->zzbfh()Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzhwn:Lcom/google/android/gms/internal/ads/zzegm;

    return-void
.end method

.method public static zzbce()Lcom/google/android/gms/internal/ads/zzeca;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeca;->zzhwo:Lcom/google/android/gms/internal/ads/zzeca;

    return-object v0
.end method

.method static synthetic zzbcf()Lcom/google/android/gms/internal/ads/zzeca;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeca;->zzhwo:Lcom/google/android/gms/internal/ads/zzeca;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzecc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 22
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeca;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzeca;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeca;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeca;->zzhwo:Lcom/google/android/gms/internal/ads/zzeca;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeca;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 20
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

    .line 12
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeca;->zzhwo:Lcom/google/android/gms/internal/ads/zzeca;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwm"

    aput-object v0, p1, p2

    const-string p2, "zzhwn"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    const-class p3, Lcom/google/android/gms/internal/ads/zzebm;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeca;->zzhwo:Lcom/google/android/gms/internal/ads/zzeca;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeca;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeca$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeca$zza;-><init>(Lcom/google/android/gms/internal/ads/zzecc;)V

    return-object p1

    .line 7
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeca;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeca;-><init>()V

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

.method public final zzbcd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzebm;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeca;->zzhwn:Lcom/google/android/gms/internal/ads/zzegm;

    return-object v0
.end method
