.class public final Lcom/google/android/gms/internal/ads/zzby$zza;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzby$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzby$zza;",
        "Lcom/google/android/gms/internal/ads/zzby$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzby$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzex:Lcom/google/android/gms/internal/ads/zzby$zza;


# instance fields
.field private zzdw:I

.field private zzev:Lcom/google/android/gms/internal/ads/zzby$zzb;

.field private zzew:Lcom/google/android/gms/internal/ads/zzby$zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzby$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzby$zza;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzby$zza;->zzex:Lcom/google/android/gms/internal/ads/zzby$zza;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzby$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method static synthetic zzac()Lcom/google/android/gms/internal/ads/zzby$zza;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzby$zza;->zzex:Lcom/google/android/gms/internal/ads/zzby$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzca;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzby$zza;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzby$zza;->zzex:Lcom/google/android/gms/internal/ads/zzby$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzby$zza;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zza;->zzex:Lcom/google/android/gms/internal/ads/zzby$zza;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzev"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzew"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzby$zza;->zzex:Lcom/google/android/gms/internal/ads/zzby$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzby$zza;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzby$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzby$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzca;)V

    return-object p1

    .line 8
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzby$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzby$zza;-><init>()V

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

.method public final zzaa()Z
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzby$zza;->zzdw:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzab()Lcom/google/android/gms/internal/ads/zzby$zzc;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zza;->zzew:Lcom/google/android/gms/internal/ads/zzby$zzc;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzby$zzc;->zzah()Lcom/google/android/gms/internal/ads/zzby$zzc;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzy()Z
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzby$zza;->zzdw:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzby$zzb;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzby$zza;->zzev:Lcom/google/android/gms/internal/ads/zzby$zzb;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzae()Lcom/google/android/gms/internal/ads/zzby$zzb;

    move-result-object v0

    :cond_8
    return-object v0
.end method
