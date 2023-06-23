.class public final enum Lcom/google/android/gms/internal/ads/zzedd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzedd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzhxv:Lcom/google/android/gms/internal/ads/zzedd;

.field public static final enum zzhxw:Lcom/google/android/gms/internal/ads/zzedd;

.field public static final enum zzhxx:Lcom/google/android/gms/internal/ads/zzedd;

.field private static final synthetic zzhxy:[Lcom/google/android/gms/internal/ads/zzedd;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedd;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedd;->zzhxv:Lcom/google/android/gms/internal/ads/zzedd;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedd;

    const-string v1, "COMPRESSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedd;->zzhxw:Lcom/google/android/gms/internal/ads/zzedd;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedd;

    const-string v1, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedd;->zzhxx:Lcom/google/android/gms/internal/ads/zzedd;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzedd;

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/ads/zzedd;->zzhxv:Lcom/google/android/gms/internal/ads/zzedd;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzedd;->zzhxw:Lcom/google/android/gms/internal/ads/zzedd;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/android/gms/internal/ads/zzedd;->zzhxy:[Lcom/google/android/gms/internal/ads/zzedd;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzedd;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedd;->zzhxy:[Lcom/google/android/gms/internal/ads/zzedd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzedd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzedd;

    return-object v0
.end method
