.class public final Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;
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
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zza;,
        Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb<",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzehy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzehy<",
            "Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzine:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;


# instance fields
.field private zzdw:I

.field private zzill:B

.field private zzimt:Lcom/google/android/gms/internal/ads/zzegm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegm<",
            "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzimu:Lcom/google/android/gms/internal/ads/zzeer;

.field private zzimv:Lcom/google/android/gms/internal/ads/zzeer;

.field private zzimw:I

.field private zzinc:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zzb;

.field private zzind:Lcom/google/android/gms/internal/ads/zzeer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzine:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzill:B

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzbfh()Lcom/google/android/gms/internal/ads/zzegm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzimt:Lcom/google/android/gms/internal/ads/zzegm;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzimu:Lcom/google/android/gms/internal/ads/zzeer;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzimv:Lcom/google/android/gms/internal/ads/zzeer;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zzhzv:Lcom/google/android/gms/internal/ads/zzeer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzind:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method static synthetic zzbis()Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzine:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejx;->zzdv:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7c

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    const/4 v0, 0x0

    :cond_14
    int-to-byte p1, v0

    .line 25
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzill:B

    return-object v1

    .line 24
    :pswitch_18
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzill:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_38

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    monitor-enter p2

    .line 18
    :try_start_26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    if-nez p1, :cond_33

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzine:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzel:Lcom/google/android/gms/internal/ads/zzehy;

    .line 22
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

    .line 14
    :pswitch_39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzine:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    return-object p1

    :pswitch_3c
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const-string p2, "zzinc"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzimt"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzimu"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzimv"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzimw"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzind"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zzine:Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;->zza(Lcom/google/android/gms/internal/ads/zzehl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejx;)V

    return-object p1

    .line 9
    :pswitch_75
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zze;-><init>()V

    return-object p1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6f
        :pswitch_3c
        :pswitch_39
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method
