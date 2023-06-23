.class public final Lcom/google/android/gms/internal/ads/zzty$zzq;
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
    name = "zzq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzty$zzq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzty$zzq;",
        "Lcom/google/android/gms/internal/ads/zzty$zzq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzcem:Lcom/google/android/gms/internal/ads/zzty$zzq;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzty$zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcek:I

.field private zzcel:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzty$zzq;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzcem:Lcom/google/android/gms/internal/ads/zzty$zzq;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/zzty$zzq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method static synthetic zzoo()Lcom/google/android/gms/internal/ads/zzty$zzq;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzcem:Lcom/google/android/gms/internal/ads/zzty$zzq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zztx;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 19
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 12
    const-class p2, Lcom/google/android/gms/internal/ads/zzty$zzq;

    monitor-enter p2

    .line 13
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzcem:Lcom/google/android/gms/internal/ads/zzty$zzq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 17
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

    .line 9
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzcem:Lcom/google/android/gms/internal/ads/zzty$zzq;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcek"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcel"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzq;->zzcem:Lcom/google/android/gms/internal/ads/zzty$zzq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzty$zzq;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzty$zzq$zza;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    return-object p1

    .line 4
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzty$zzq;-><init>()V

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
