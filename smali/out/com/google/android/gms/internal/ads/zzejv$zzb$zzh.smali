.class public final Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;
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
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;


# instance fields
.field private zzdw:I

.field private zzill:B

.field private zzilo:Ljava/lang/String;

.field private zzioe:I

.field private zziof:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzd;

.field private zziog:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

.field private zzioh:I

.field private zzioi:Lcom/google/android/gms/internal/ads/zzegh;

.field private zzioj:Ljava/lang/String;

.field private zziok:I

.field private zziol:Lcom/google/android/gms/internal/ads/zzegm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;-><init>()V

    .line 60
    sput-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    .line 61
    const-class v1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzill:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzilo:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzbff()Lcom/google/android/gms/internal/ads/zzegh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzioi:Lcom/google/android/gms/internal/ads/zzegh;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzioj:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfh()Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziol:Lcom/google/android/gms/internal/ads/zzegm;

    return-void
.end method

.method private final setId(I)V
    .registers 3

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzioe:I

    return-void
.end method

.method private final setUrl(Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzilo:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzd;)V
    .registers 2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziof:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzd;

    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zza;)V
    .registers 2

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zza;->zzw()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziok:I

    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzdw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;I)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->setId(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;Lcom/google/android/gms/internal/ads/zzejv$zzb$zzd;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zza;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzid(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbix()Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zzb;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfc()Lcom/google/android/gms/internal/ads/zzegb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zzb;

    return-object v0
.end method

.method static synthetic zzbiy()Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;
    .registers 1

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    return-object v0
.end method

.method private final zzid(Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziol:Lcom/google/android/gms/internal/ads/zzegm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->zzbcy()Z

    move-result v0

    if-nez v0, :cond_13

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziol:Lcom/google/android/gms/internal/ads/zzegm;

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegm;)Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziol:Lcom/google/android/gms/internal/ads/zzegm;

    .line 29
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziol:Lcom/google/android/gms/internal/ads/zzegm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzegm;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzilo:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 32
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejx;->zzdv:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_90

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    const/4 v0, 0x0

    :cond_14
    int-to-byte p1, v0

    .line 50
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzill:B

    return-object v1

    .line 49
    :pswitch_18
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzill:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_38

    .line 42
    const-class p2, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    monitor-enter p2

    .line 43
    :try_start_26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_33

    .line 45
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 46
    sput-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 47
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

    .line 39
    :pswitch_39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    return-object p1

    :pswitch_3c
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const-string p2, "zzioe"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzilo"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zziof"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zziog"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzioh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzioi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzioj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zziok"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zza;->zzx()Lcom/google/android/gms/internal/ads/zzegi;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zziol"

    aput-object p3, p1, p2

    const-string p2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    .line 38
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziom:Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_83
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejx;)V

    return-object p1

    .line 33
    :pswitch_89
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;-><init>()V

    return-object p1

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_89
        :pswitch_83
        :pswitch_3c
        :pswitch_39
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

.method public final zzbiw()I
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzh;->zziol:Lcom/google/android/gms/internal/ads/zzegm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->size()I

    move-result v0

    return v0
.end method
