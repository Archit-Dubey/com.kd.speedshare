.class public final Lcom/google/android/gms/internal/ads/zzebn;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzebn$zza;,
        Lcom/google/android/gms/internal/ads/zzebn$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzebn;",
        "Lcom/google/android/gms/internal/ads/zzebn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzebn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhvo:Lcom/google/android/gms/internal/ads/zzebn;


# instance fields
.field private zzhvm:I

.field private zzhvn:Lcom/google/android/gms/internal/ads/zzegm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegm<",
            "Lcom/google/android/gms/internal/ads/zzebn$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebn;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvo:Lcom/google/android/gms/internal/ads/zzebn;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzebn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebn;->zzbfh()Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvn:Lcom/google/android/gms/internal/ads/zzegm;

    return-void
.end method

.method static synthetic zzbbh()Lcom/google/android/gms/internal/ads/zzebn;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvo:Lcom/google/android/gms/internal/ads/zzebn;

    return-object v0
.end method

.method public static zzc([BLcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzebn;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzegl;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvo:Lcom/google/android/gms/internal/ads/zzebn;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzegb;[BLcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzegb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzebn;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzebo;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 24
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebn;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/zzebn;

    monitor-enter p2

    .line 18
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebn;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzebn;->zzhvo:Lcom/google/android/gms/internal/ads/zzebn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/zzebn;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 22
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

    .line 14
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzebn;->zzhvo:Lcom/google/android/gms/internal/ads/zzebn;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhvm"

    aput-object v0, p1, p2

    const-string p2, "zzhvn"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/google/android/gms/internal/ads/zzebn$zzb;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/ads/zzebn;->zzhvo:Lcom/google/android/gms/internal/ads/zzebn;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzebn;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebn$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzebn$zza;-><init>(Lcom/google/android/gms/internal/ads/zzebo;)V

    return-object p1

    .line 9
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzebn;-><init>()V

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

.method public final zzbbe()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvm:I

    return v0
.end method

.method public final zzbbf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzebn$zzb;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvn:Lcom/google/android/gms/internal/ads/zzegm;

    return-object v0
.end method

.method public final zzbbg()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzhvn:Lcom/google/android/gms/internal/ads/zzegm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegm;->size()I

    move-result v0

    return v0
.end method
