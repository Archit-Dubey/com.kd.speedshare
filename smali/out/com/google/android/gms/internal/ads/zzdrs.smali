.class public final Lcom/google/android/gms/internal/ads/zzdrs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final enum zzhkd:I = 0x1

.field public static final enum zzhke:I = 0x2

.field private static final synthetic zzhkf:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrs;->zzhkf:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
