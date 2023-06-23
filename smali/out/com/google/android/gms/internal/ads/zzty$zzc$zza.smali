.class public final enum Lcom/google/android/gms/internal/ads/zzty$zzc$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzty$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzty$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzegg;"
    }
.end annotation


# static fields
.field public static final enum zzbzj:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field public static final enum zzbzk:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field public static final enum zzbzl:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final enum zzbzm:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final enum zzbzn:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field public static final enum zzbzo:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final enum zzbzp:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final enum zzbzq:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final enum zzbzr:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field public static final enum zzbzs:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final enum zzbzt:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final synthetic zzbzu:[Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegf<",
            "Lcom/google/android/gms/internal/ads/zzty$zzc$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzj:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "BANNER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzk:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "INTERSTITIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "NATIVE_EXPRESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzm:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "NATIVE_CONTENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzn:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "NATIVE_APP_INSTALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzo:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzp:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "DFP_BANNER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzq:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "DFP_INTERSTITIAL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "REWARD_BASED_VIDEO_AD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzs:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const-string v1, "BANNER_SEARCH_ADS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzt:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 41
    sget-object v13, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzj:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v13, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzk:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzm:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzn:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzo:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzp:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzq:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzs:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzu:[Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzue;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzes:Lcom/google/android/gms/internal/ads/zzegf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzty$zzc$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzu:[Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object v0
.end method

.method public static zzcd(I)Lcom/google/android/gms/internal/ads/zzty$zzc$zza;
    .registers 1

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    .line 14
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzt:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 13
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzs:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 11
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzq:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 10
    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzp:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 9
    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzo:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 8
    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzn:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 7
    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzm:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 6
    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 5
    :pswitch_20
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzk:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    .line 4
    :pswitch_23
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->zzbzj:Lcom/google/android/gms/internal/ads/zzty$zzc$zza;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static zzx()Lcom/google/android/gms/internal/ads/zzegi;
    .registers 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzud;->zzeu:Lcom/google/android/gms/internal/ads/zzegi;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->value:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzw()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzc$zza;->value:I

    return v0
.end method
