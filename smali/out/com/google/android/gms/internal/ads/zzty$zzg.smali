.class public final Lcom/google/android/gms/internal/ads/zzty$zzg;
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
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzty$zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzty$zzg;",
        "Lcom/google/android/gms/internal/ads/zzty$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static final zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzty$zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcap:Ljava/lang/String;

.field private zzcaq:Lcom/google/android/gms/internal/ads/zzty$zzt;

.field private zzcar:I

.field private zzcas:Lcom/google/android/gms/internal/ads/zzty$zzu;

.field private zzcat:I

.field private zzcau:I

.field private zzcav:I

.field private zzcaw:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzty$zzg;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/zzty$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcap:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcau:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcav:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcaw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzty$zzg;Lcom/google/android/gms/internal/ads/zzty$zzu;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzty$zzg;->zza(Lcom/google/android/gms/internal/ads/zzty$zzu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzty$zzg;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzby(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzty$zzu;)V
    .registers 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcas:Lcom/google/android/gms/internal/ads/zzty$zzu;

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzdw:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzdw:I

    return-void
.end method

.method private final zzby(Ljava/lang/String;)V
    .registers 3

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzdw:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcap:Ljava/lang/String;

    return-void
.end method

.method public static zzns()Lcom/google/android/gms/internal/ads/zzty$zzg;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

    return-object v0
.end method

.method static synthetic zznt()Lcom/google/android/gms/internal/ads/zzty$zzg;
    .registers 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zztx;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_92

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 34
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzty$zzg;

    monitor-enter p2

    .line 28
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 32
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

    .line 24
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

    return-object p1

    :pswitch_33
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcap"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcaq"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcar"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcas"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcat"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcau"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzui;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcav"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzui;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcaw"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzui;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1009\u0003\u0005\u1004\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u100c\u0007"

    .line 23
    sget-object p3, Lcom/google/android/gms/internal/ads/zzty$zzg;->zzcax:Lcom/google/android/gms/internal/ads/zzty$zzg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzty$zzg;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_85
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzty$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zztx;)V

    return-object p1

    .line 16
    :pswitch_8b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzty$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzty$zzg;-><init>()V

    return-object p1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_85
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
