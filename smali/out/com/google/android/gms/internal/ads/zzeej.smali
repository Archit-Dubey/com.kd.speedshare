.class public abstract Lcom/google/android/gms/internal/ads/zzeej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehu;


# instance fields
.field private zzhzk:Z

.field private zzhzl:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeej;->zzhzk:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeej;->zzhzl:I

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeej;->zzbcv()Lcom/google/android/gms/internal/ads/zzehu;

    move-result-object v0

    return-object v0
.end method

.method public final zzbcv()Lcom/google/android/gms/internal/ads/zzehu;
    .registers 3

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
