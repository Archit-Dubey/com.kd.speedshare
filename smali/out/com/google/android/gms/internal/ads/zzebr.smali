.class public final Lcom/google/android/gms/internal/ads/zzebr;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzebr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzebr;",
        "Lcom/google/android/gms/internal/ads/zzebr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzebr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhvx:Lcom/google/android/gms/internal/ads/zzebr;


# instance fields
.field private zzhrx:I

.field private zzhvw:Lcom/google/android/gms/internal/ads/zzebu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebr;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzebr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzebr;->zzhrx:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebr;I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebr;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebr;Lcom/google/android/gms/internal/ads/zzebu;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebr;->zza(Lcom/google/android/gms/internal/ads/zzebu;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzebu;)V
    .registers 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebr;->zzhvw:Lcom/google/android/gms/internal/ads/zzebu;

    return-void
.end method

.method public static zzbbr()Lcom/google/android/gms/internal/ads/zzebr$zza;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfc()Lcom/google/android/gms/internal/ads/zzegb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebr$zza;

    return-object v0
.end method

.method static synthetic zzbbs()Lcom/google/android/gms/internal/ads/zzebr;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    return-object v0
.end method

.method public static zzs(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzebr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzebr;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzebr;->zzhrx:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzebs;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 28
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebr;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/zzebr;

    monitor-enter p2

    .line 22
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebr;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/zzebr;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 26
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

    .line 18
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhrx"

    aput-object v0, p1, p2

    const-string p2, "zzhvw"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    .line 17
    sget-object p3, Lcom/google/android/gms/internal/ads/zzebr;->zzhvx:Lcom/google/android/gms/internal/ads/zzebr;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzebr;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebr$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzebr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzebs;)V

    return-object p1

    .line 13
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzebr;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzbbq()Lcom/google/android/gms/internal/ads/zzebu;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebr;->zzhvw:Lcom/google/android/gms/internal/ads/zzebu;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebu;->zzbbu()Lcom/google/android/gms/internal/ads/zzebu;

    move-result-object v0

    :cond_8
    return-object v0
.end method
