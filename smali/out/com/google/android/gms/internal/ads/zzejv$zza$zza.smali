.class public final Lcom/google/android/gms/internal/ads/zzejv$zza$zza;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejv$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejv$zza$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzejv$zza$zza;",
        "Lcom/google/android/gms/internal/ads/zzejv$zza$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzejv$zza$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzilr:Lcom/google/android/gms/internal/ads/zzejv$zza$zza;


# instance fields
.field private zzdw:I

.field private zziln:Ljava/lang/String;

.field private zzilo:Ljava/lang/String;

.field private zzilp:Ljava/lang/String;

.field private zzilq:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilr:Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zziln:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilp:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbie()Lcom/google/android/gms/internal/ads/zzejv$zza$zza;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilr:Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzejx;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilr:Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilr:Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zziln"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzilo"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzilp"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzilq"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1004\u0003"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zzilr:Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzejv$zza$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejx;)V

    return-object p1

    .line 7
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzejv$zza$zza;-><init>()V

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
