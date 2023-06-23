.class public final enum Lcom/google/android/gms/internal/ads/zzaf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzaf;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum zzbn:Lcom/google/android/gms/internal/ads/zzaf;

.field public static final enum zzbo:Lcom/google/android/gms/internal/ads/zzaf;

.field private static final enum zzbp:Lcom/google/android/gms/internal/ads/zzaf;

.field private static final enum zzbq:Lcom/google/android/gms/internal/ads/zzaf;

.field private static final synthetic zzbr:[Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaf;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaf;->zzbn:Lcom/google/android/gms/internal/ads/zzaf;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaf;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaf;->zzbo:Lcom/google/android/gms/internal/ads/zzaf;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaf;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaf;->zzbp:Lcom/google/android/gms/internal/ads/zzaf;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaf;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzaf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaf;->zzbq:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzaf;

    .line 7
    sget-object v6, Lcom/google/android/gms/internal/ads/zzaf;->zzbn:Lcom/google/android/gms/internal/ads/zzaf;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaf;->zzbo:Lcom/google/android/gms/internal/ads/zzaf;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaf;->zzbp:Lcom/google/android/gms/internal/ads/zzaf;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaf;->zzbr:[Lcom/google/android/gms/internal/ads/zzaf;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzaf;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaf;->zzbr:[Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzaf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzaf;

    return-object v0
.end method
