.class public final Lcom/google/android/gms/internal/ads/zzto$zza;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzto$zza$zzb;,
        Lcom/google/android/gms/internal/ads/zzto$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzto$zza;",
        "Lcom/google/android/gms/internal/ads/zzto$zza$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzbvr:Lcom/google/android/gms/internal/ads/zzto$zza;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzto$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzto$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzto$zza;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/zzto$zza;->zzbvr:Lcom/google/android/gms/internal/ads/zzto$zza;

    .line 24
    const-class v1, Lcom/google/android/gms/internal/ads/zzto$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method static synthetic zznb()Lcom/google/android/gms/internal/ads/zzto$zza;
    .registers 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzto$zza;->zzbvr:Lcom/google/android/gms/internal/ads/zzto$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zztq;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_48

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 18
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzto$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 11
    const-class p2, Lcom/google/android/gms/internal/ads/zzto$zza;

    monitor-enter p2

    .line 12
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzto$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzto$zza;->zzbvr:Lcom/google/android/gms/internal/ads/zzto$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/ads/zzto$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 16
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

    .line 8
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzto$zza;->zzbvr:Lcom/google/android/gms/internal/ads/zzto$zza;

    return-object p1

    :pswitch_33
    const-string p1, "\u0001\u0000"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/ads/zzto$zza;->zzbvr:Lcom/google/android/gms/internal/ads/zzto$zza;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzto$zza;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzto$zza$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzto$zza$zzb;-><init>(Lcom/google/android/gms/internal/ads/zztq;)V

    return-object p1

    .line 4
    :pswitch_42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzto$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzto$zza;-><init>()V

    return-object p1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3c
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
