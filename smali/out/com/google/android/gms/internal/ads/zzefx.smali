.class final enum Lcom/google/android/gms/internal/ads/zzefx;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzefx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzidv:Lcom/google/android/gms/internal/ads/zzefx;

.field public static final enum zzidw:Lcom/google/android/gms/internal/ads/zzefx;

.field public static final enum zzidx:Lcom/google/android/gms/internal/ads/zzefx;

.field public static final enum zzidy:Lcom/google/android/gms/internal/ads/zzefx;

.field private static final synthetic zziea:[Lcom/google/android/gms/internal/ads/zzefx;


# instance fields
.field private final zzidz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefx;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzefx;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefx;->zzidv:Lcom/google/android/gms/internal/ads/zzefx;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefx;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzefx;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefx;->zzidw:Lcom/google/android/gms/internal/ads/zzefx;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefx;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzefx;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefx;->zzidx:Lcom/google/android/gms/internal/ads/zzefx;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefx;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzefx;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefx;->zzidy:Lcom/google/android/gms/internal/ads/zzefx;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzefx;

    .line 9
    sget-object v6, Lcom/google/android/gms/internal/ads/zzefx;->zzidv:Lcom/google/android/gms/internal/ads/zzefx;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzefx;->zzidw:Lcom/google/android/gms/internal/ads/zzefx;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzefx;->zzidx:Lcom/google/android/gms/internal/ads/zzefx;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/ads/zzefx;->zziea:[Lcom/google/android/gms/internal/ads/zzefx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzefx;->zzidz:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzefx;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefx;->zziea:[Lcom/google/android/gms/internal/ads/zzefx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzefx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzefx;

    return-object v0
.end method