.class public final Lcom/google/android/gms/internal/ads/zzty$zzx;
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
    name = "zzx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzty$zzx$zzb;,
        Lcom/google/android/gms/internal/ads/zzty$zzx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzty$zzx;",
        "Lcom/google/android/gms/internal/ads/zzty$zzx$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzcft:Lcom/google/android/gms/internal/ads/zzty$zzx;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzty$zzx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcfs:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzty$zzx;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzcft:Lcom/google/android/gms/internal/ads/zzty$zzx;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/zzty$zzx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method static synthetic zzow()Lcom/google/android/gms/internal/ads/zzty$zzx;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzcft:Lcom/google/android/gms/internal/ads/zzty$zzx;

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

    packed-switch p1, :pswitch_data_5c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzty$zzx;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzcft:Lcom/google/android/gms/internal/ads/zzty$zzx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzcft:Lcom/google/android/gms/internal/ads/zzty$zzx;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcfs"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzx;->zzcft:Lcom/google/android/gms/internal/ads/zzty$zzx;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzty$zzx;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_4f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzx$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzty$zzx$zzb;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    return-object p1

    .line 4
    :pswitch_55
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzty$zzx;-><init>()V

    return-object p1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4f
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
