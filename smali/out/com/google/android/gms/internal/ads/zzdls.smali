.class public final Lcom/google/android/gms/internal/ads/zzdls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhbq:I = 0x1

.field public static final enum zzhbr:I = 0x2

.field public static final enum zzhbs:I = 0x3

.field public static final enum zzhbt:I = 0x4

.field public static final enum zzhbu:I = 0x5

.field private static final synthetic zzhbv:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v2, v1, v3

    aput v0, v1, v2

    .line 7
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdls;->zzhbv:[I

    return-void
.end method

.method public static zzast()[I
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdls;->zzhbv:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
