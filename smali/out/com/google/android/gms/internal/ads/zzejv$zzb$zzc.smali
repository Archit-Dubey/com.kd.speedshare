.class public final Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejv$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;


# instance fields
.field private zzdw:I

.field private zzhup:Lcom/google/android/gms/internal/ads/zzeer;

.field private zzill:B

.field private zzimq:Lcom/google/android/gms/internal/ads/zzeer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzill:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimq:Lcom/google/android/gms/internal/ads/zzeer;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzhup:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzap(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method private final zzae(Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzdw:I

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzhup:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method private final zzap(Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzdw:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimq:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzae(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method public static zzbin()Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc$zza;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfc()Lcom/google/android/gms/internal/ads/zzegb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc$zza;

    return-object v0
.end method

.method static synthetic zzbio()Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;
    .registers 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejx;->zzdv:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_62

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    const/4 v0, 0x0

    :cond_14
    int-to-byte p1, v0

    .line 32
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzill:B

    return-object v1

    .line 31
    :pswitch_18
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzill:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_38

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    monitor-enter p2

    .line 25
    :try_start_26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_33

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 29
    :cond_33
    monitor-exit p2

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw p1

    :cond_38
    :goto_38
    return-object p1

    .line 21
    :pswitch_39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    return-object p1

    :pswitch_3c
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const-string p2, "zzimq"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhup"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u150a\u0000\u0002\u100a\u0001"

    .line 20
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zzimr:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_55
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejx;)V

    return-object p1

    .line 16
    :pswitch_5b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;-><init>()V

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_55
        :pswitch_3c
        :pswitch_39
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method
