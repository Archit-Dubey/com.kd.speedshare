.class public final Lcom/google/android/gms/internal/ads/zzegb$zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzegb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzieo:I = 0x1

.field public static final enum zziep:I = 0x2

.field public static final enum zzieq:I = 0x3

.field public static final enum zzier:I = 0x4

.field public static final enum zzies:I = 0x5

.field public static final enum zziet:I = 0x6

.field public static final enum zzieu:I = 0x7

.field private static final synthetic zziev:[I

.field public static final enum zziew:I = 0x1

.field public static final enum zziex:I = 0x2

.field private static final synthetic zziey:[I

.field public static final enum zziez:I = 0x1

.field public static final enum zzifa:I = 0x2

.field private static final synthetic zzifb:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v4, 0x2

    aput v4, v1, v3

    const/4 v5, 0x3

    aput v5, v1, v4

    const/4 v6, 0x4

    aput v6, v1, v5

    const/4 v5, 0x5

    aput v5, v1, v6

    const/4 v6, 0x6

    aput v6, v1, v5

    aput v0, v1, v6

    sput-object v1, Lcom/google/android/gms/internal/ads/zzegb$zze;->zziev:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzegb$zze;->zziey:[I

    new-array v0, v4, [I

    aput v3, v0, v2

    aput v4, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzegb$zze;->zzifb:[I

    return-void
.end method

.method public static zzbfs()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegb$zze;->zziev:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
