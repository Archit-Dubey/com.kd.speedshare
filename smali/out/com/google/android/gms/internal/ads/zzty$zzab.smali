.class public final Lcom/google/android/gms/internal/ads/zzty$zzab;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzab"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzty$zzab$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzty$zzab;",
        "Lcom/google/android/gms/internal/ads/zzty$zzab$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzcgf:Lcom/google/android/gms/internal/ads/zzty$zzab;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzty$zzab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcce:I

.field private zzcff:I

.field private zzcfg:I

.field private zzcfp:Lcom/google/android/gms/internal/ads/zzty$zzx;

.field private zzcgb:I

.field private zzcge:J

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzty$zzab;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzcgf:Lcom/google/android/gms/internal/ads/zzty$zzab;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzty$zzab;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzcce:I

    return-void
.end method

.method static synthetic zzpa()Lcom/google/android/gms/internal/ads/zzty$zzab;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzcgf:Lcom/google/android/gms/internal/ads/zzty$zzab;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zztx;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_76

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 21
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzty$zzab;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzcgf:Lcom/google/android/gms/internal/ads/zzty$zzab;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 19
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

    .line 11
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzcgf:Lcom/google/android/gms/internal/ads/zzty$zzab;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcce"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzui;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcfp"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcff"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcfg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcgb"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzcge"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1003\u0005"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzab;->zzcgf:Lcom/google/android/gms/internal/ads/zzty$zzab;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzty$zzab;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_69
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzab$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzty$zzab$zza;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    return-object p1

    .line 5
    :pswitch_6f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzab;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzty$zzab;-><init>()V

    return-object p1

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_69
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
