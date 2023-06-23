.class public final Lcom/google/android/gms/internal/ads/zzeby;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeby$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzeby;",
        "Lcom/google/android/gms/internal/ads/zzeby$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzeby;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwe:Lcom/google/android/gms/internal/ads/zzeby;


# instance fields
.field private zzhwc:Ljava/lang/String;

.field private zzhwd:Lcom/google/android/gms/internal/ads/zzebi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeby;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzeby;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwc:Ljava/lang/String;

    return-void
.end method

.method public static zzbcb()Lcom/google/android/gms/internal/ads/zzeby;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    return-object v0
.end method

.method static synthetic zzbcc()Lcom/google/android/gms/internal/ads/zzeby;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    return-object v0
.end method

.method public static zzv(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzeby;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeby;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzebx;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 23
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeby;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzeby;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeby;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeby;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 21
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

    .line 13
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwc"

    aput-object v0, p1, p2

    const-string p2, "zzhwd"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeby;->zzhwe:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeby;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeby$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeby$zza;-><init>(Lcom/google/android/gms/internal/ads/zzebx;)V

    return-object p1

    .line 8
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeby;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeby;-><init>()V

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

.method public final zzbbz()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbca()Lcom/google/android/gms/internal/ads/zzebi;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeby;->zzhwd:Lcom/google/android/gms/internal/ads/zzebi;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebi;->zzbax()Lcom/google/android/gms/internal/ads/zzebi;

    move-result-object v0

    :cond_8
    return-object v0
.end method
