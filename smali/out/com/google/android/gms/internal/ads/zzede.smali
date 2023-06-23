.class public final enum Lcom/google/android/gms/internal/ads/zzede;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzede;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzhxz:Lcom/google/android/gms/internal/ads/zzede;

.field public static final enum zzhya:Lcom/google/android/gms/internal/ads/zzede;

.field public static final enum zzhyb:Lcom/google/android/gms/internal/ads/zzede;

.field private static final synthetic zzhyc:[Lcom/google/android/gms/internal/ads/zzede;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzede;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzede;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhxz:Lcom/google/android/gms/internal/ads/zzede;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzede;

    const-string v1, "NIST_P384"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzede;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhya:Lcom/google/android/gms/internal/ads/zzede;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzede;

    const-string v1, "NIST_P521"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzede;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhyb:Lcom/google/android/gms/internal/ads/zzede;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzede;

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/ads/zzede;->zzhxz:Lcom/google/android/gms/internal/ads/zzede;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzede;->zzhya:Lcom/google/android/gms/internal/ads/zzede;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/android/gms/internal/ads/zzede;->zzhyc:[Lcom/google/android/gms/internal/ads/zzede;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzede;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhyc:[Lcom/google/android/gms/internal/ads/zzede;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzede;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzede;

    return-object v0
.end method
