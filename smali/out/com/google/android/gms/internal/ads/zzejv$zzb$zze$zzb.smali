.class public final Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzinh:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;


# instance fields
.field private zzdw:I

.field private zzina:Lcom/google/android/gms/internal/ads/zzeer;

.field private zzinf:I

.field private zzing:Lcom/google/android/gms/internal/ads/zzeer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzinh:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzing:Lcom/google/android/gms/internal/ads/zzeer;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzina:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method static synthetic zzbit()Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzinh:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzejx;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzinh:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzinh:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzinf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzing"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzina"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zzinh:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejx;)V

    return-object p1

    .line 6
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
