.class public final Lcom/google/android/gms/internal/ads/zzcf$zzb;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcf$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzcf$zzb;",
        "Lcom/google/android/gms/internal/ads/zzcf$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzcf$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlf:Lcom/google/android/gms/internal/ads/zzcf$zzb;


# instance fields
.field private zzdw:I

.field private zzla:J

.field private zzlb:I

.field private zzlc:Z

.field private zzld:Lcom/google/android/gms/internal/ads/zzegh;

.field private zzle:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcf$zzb;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzlf:Lcom/google/android/gms/internal/ads/zzcf$zzb;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/zzcf$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzbff()Lcom/google/android/gms/internal/ads/zzegh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzld:Lcom/google/android/gms/internal/ads/zzegh;

    return-void
.end method

.method static synthetic zzba()Lcom/google/android/gms/internal/ads/zzcf$zzb;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzlf:Lcom/google/android/gms/internal/ads/zzcf$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzce;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 20
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzcf$zzb;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzlf:Lcom/google/android/gms/internal/ads/zzcf$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 18
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

    .line 10
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzlf:Lcom/google/android/gms/internal/ads/zzcf$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzla"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzlb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzlc"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzld"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzle"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zzlf:Lcom/google/android/gms/internal/ads/zzcf$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzb;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcf$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzce;)V

    return-object p1

    .line 5
    :pswitch_62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcf$zzb;-><init>()V

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
