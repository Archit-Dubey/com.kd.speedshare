.class public final Lcom/google/android/gms/internal/ads/zzazh;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzazh;->errorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazh;->errorCode:I

    return v0
.end method
