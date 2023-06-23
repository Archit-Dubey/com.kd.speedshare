.class public final Lcom/google/android/gms/internal/ads/zzcf$zze;
.super Lcom/google/android/gms/internal/ads/zzegb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcf$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzcf$zze;",
        "Lcom/google/android/gms/internal/ads/zzcf$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzcf$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmf:Lcom/google/android/gms/internal/ads/zzcf$zze;


# instance fields
.field private zzdw:I

.field private zzfl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcf$zze;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzmf:Lcom/google/android/gms/internal/ads/zzcf$zze;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/zzcf$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzfl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbl()Lcom/google/android/gms/internal/ads/zzcf$zze;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzmf:Lcom/google/android/gms/internal/ads/zzcf$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzce;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzcf$zze;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzmf:Lcom/google/android/gms/internal/ads/zzcf$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzmf:Lcom/google/android/gms/internal/ads/zzcf$zze;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzfl"

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1008\u0000"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcf$zze;->zzmf:Lcom/google/android/gms/internal/ads/zzcf$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcf$zze;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcf$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzce;)V

    return-object p1

    .line 5
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcf$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcf$zze;-><init>()V

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
