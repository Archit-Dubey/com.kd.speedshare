.class public final Lcom/google/android/gms/internal/ads/zzeac;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeac$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzeac;",
        "Lcom/google/android/gms/internal/ads/zzeac$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzeac;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhsw:Lcom/google/android/gms/internal/ads/zzeac;


# instance fields
.field private zzhrx:I

.field private zzhry:Lcom/google/android/gms/internal/ads/zzeer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeac;-><init>()V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/ads/zzeac;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeac;->zzhry:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeac;->zzhrx:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeac;I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeac;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeac;Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeac;->zzs(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method public static zzazi()Lcom/google/android/gms/internal/ads/zzeac$zza;
    .registers 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegb;->zzbfc()Lcom/google/android/gms/internal/ads/zzegb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeac$zza;

    return-object v0
.end method

.method static synthetic zzazj()Lcom/google/android/gms/internal/ads/zzeac;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzeac;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeac;

    return-object p0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeac;->zzhry:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeac;->zzhrx:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzead;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 29
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeac;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 22
    const-class p2, Lcom/google/android/gms/internal/ads/zzeac;

    monitor-enter p2

    .line 23
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeac;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeac;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 27
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

    .line 19
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhrx"

    aput-object v0, p1, p2

    const-string p2, "zzhry"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeac;->zzhsw:Lcom/google/android/gms/internal/ads/zzeac;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeac;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeac$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeac$zza;-><init>(Lcom/google/android/gms/internal/ads/zzead;)V

    return-object p1

    .line 14
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeac;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeac;-><init>()V

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

.method public final zzayb()Lcom/google/android/gms/internal/ads/zzeer;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeac;->zzhry:Lcom/google/android/gms/internal/ads/zzeer;

    return-object v0
.end method
