.class public final Lcom/google/android/gms/internal/ads/zzebb;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzebb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzebb;",
        "Lcom/google/android/gms/internal/ads/zzebb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzebb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhul:Lcom/google/android/gms/internal/ads/zzebb;


# instance fields
.field private zzhrx:I

.field private zzhsb:I

.field private zzhuj:Lcom/google/android/gms/internal/ads/zzebc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebb;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method public static zzbam()Lcom/google/android/gms/internal/ads/zzebb;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    return-object v0
.end method

.method static synthetic zzban()Lcom/google/android/gms/internal/ads/zzebb;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    return-object v0
.end method

.method public static zzr(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzebb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzebb;

    return-object p0
.end method


# virtual methods
.method public final getKeySize()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzebb;->zzhsb:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeba;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 22
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzebb;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzebb;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 20
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

    .line 12
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhuj"

    aput-object v0, p1, p2

    const-string p2, "zzhsb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhrx"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzebb;->zzhul:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzebb;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzebb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeba;)V

    return-object p1

    .line 7
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzebb;-><init>()V

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

.method public final zzbai()Lcom/google/android/gms/internal/ads/zzebc;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebb;->zzhuj:Lcom/google/android/gms/internal/ads/zzebc;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebc;->zzbap()Lcom/google/android/gms/internal/ads/zzebc;

    move-result-object v0

    :cond_8
    return-object v0
.end method
