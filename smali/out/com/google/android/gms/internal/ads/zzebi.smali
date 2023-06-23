.class public final Lcom/google/android/gms/internal/ads/zzebi;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzebi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzebi;",
        "Lcom/google/android/gms/internal/ads/zzebi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzebi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhvg:Lcom/google/android/gms/internal/ads/zzebi;


# instance fields
.field private zzhuo:Ljava/lang/String;

.field private zzhup:Lcom/google/android/gms/internal/ads/zzeer;

.field private zzhvf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebi;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzebi;->zzhvg:Lcom/google/android/gms/internal/ads/zzebi;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzebi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzhuo:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzhup:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method public static zzbax()Lcom/google/android/gms/internal/ads/zzebi;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebi;->zzhvg:Lcom/google/android/gms/internal/ads/zzebi;

    return-object v0
.end method

.method static synthetic zzbay()Lcom/google/android/gms/internal/ads/zzebi;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebi;->zzhvg:Lcom/google/android/gms/internal/ads/zzebi;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzebk;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 23
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebi;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzebi;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebi;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzebi;->zzhvg:Lcom/google/android/gms/internal/ads/zzebi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzebi;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 21
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

    .line 13
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebi;->zzhvg:Lcom/google/android/gms/internal/ads/zzebi;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhuo"

    aput-object v0, p1, p2

    const-string p2, "zzhup"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhvf"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzebi;->zzhvg:Lcom/google/android/gms/internal/ads/zzebi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzebi;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzebi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzebk;)V

    return-object p1

    .line 8
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzebi;-><init>()V

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

.method public final zzbar()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzhuo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbas()Lcom/google/android/gms/internal/ads/zzeer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzhup:Lcom/google/android/gms/internal/ads/zzeer;

    return-object v0
.end method
