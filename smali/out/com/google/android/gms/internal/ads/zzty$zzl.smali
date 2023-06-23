.class public final Lcom/google/android/gms/internal/ads/zzty$zzl;
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
    name = "zzl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzty$zzl$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzty$zzl;",
        "Lcom/google/android/gms/internal/ads/zzty$zzl$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzcci:Lcom/google/android/gms/internal/ads/zzty$zzl;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzty$zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzccc:Lcom/google/android/gms/internal/ads/zzty$zzt;

.field private zzcce:I

.field private zzccg:Lcom/google/android/gms/internal/ads/zzty$zzj;

.field private zzcch:Lcom/google/android/gms/internal/ads/zzegm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegm<",
            "Lcom/google/android/gms/internal/ads/zzty$zzs;",
            ">;"
        }
    .end annotation
.end field

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzty$zzl;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzcci:Lcom/google/android/gms/internal/ads/zzty$zzl;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzty$zzl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzbfh()Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzcch:Lcom/google/android/gms/internal/ads/zzegm;

    return-void
.end method

.method static synthetic zzoe()Lcom/google/android/gms/internal/ads/zzty$zzl;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzcci:Lcom/google/android/gms/internal/ads/zzty$zzl;

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

    packed-switch p1, :pswitch_data_70

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzty$zzl;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzcci:Lcom/google/android/gms/internal/ads/zzty$zzl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzcci:Lcom/google/android/gms/internal/ads/zzty$zzl;

    return-object p1

    :pswitch_33
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzccg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcch"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 7
    const-class p3, Lcom/google/android/gms/internal/ads/zzty$zzs;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcce"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzui;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzccc"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u1009\u0002"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzl;->zzcci:Lcom/google/android/gms/internal/ads/zzty$zzl;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzty$zzl;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_63
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzl$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzty$zzl$zza;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    return-object p1

    .line 5
    :pswitch_69
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzty$zzl;-><init>()V

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
