.class public final Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbw$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbw$zza$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;",
        "Lcom/google/android/gms/internal/ads/zzbw$zza$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeo:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;


# instance fields
.field private zzdw:I

.field private zzem:Ljava/lang/String;

.field private zzen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzeo:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzem:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzen:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzv()Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzeo:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbv;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzeo:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzeo:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzem"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzen"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzeo:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-object p1

    .line 6
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;-><init>()V

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
