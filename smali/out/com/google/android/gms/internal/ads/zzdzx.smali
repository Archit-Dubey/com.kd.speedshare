.class public final Lcom/google/android/gms/internal/ads/zzdzx;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdzx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzdzx;",
        "Lcom/google/android/gms/internal/ads/zzdzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzdzx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhst:Lcom/google/android/gms/internal/ads/zzdzx;


# instance fields
.field private zzhso:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzx;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzx;->zzhst:Lcom/google/android/gms/internal/ads/zzdzx;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-void
.end method

.method public static zzazd()Lcom/google/android/gms/internal/ads/zzdzx;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdzx;->zzhst:Lcom/google/android/gms/internal/ads/zzdzx;

    return-object v0
.end method

.method static synthetic zzaze()Lcom/google/android/gms/internal/ads/zzdzx;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdzx;->zzhst:Lcom/google/android/gms/internal/ads/zzdzx;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdzw;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_50

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 20
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdzx;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzdzx;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdzx;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdzx;->zzhst:Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdzx;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 18
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

    .line 10
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdzx;->zzhst:Lcom/google/android/gms/internal/ads/zzdzx;

    return-object p1

    :pswitch_33
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzhso"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdzx;->zzhst:Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdzx;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_43
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdzx$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdzx$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;)V

    return-object p1

    .line 5
    :pswitch_49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdzx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdzx;-><init>()V

    return-object p1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzayw()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzhso:I

    return v0
.end method
