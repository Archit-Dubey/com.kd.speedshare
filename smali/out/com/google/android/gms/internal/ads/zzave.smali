.class public final Lcom/google/android/gms/internal/ads/zzave;
.super Lcom/google/android/gms/internal/ads/zzaug;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private final type:Ljava/lang/String;

.field private final zzdun:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    if-eqz p1, :cond_10

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    .line 9
    :goto_11
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzave;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaub;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaub;->type:Ljava/lang/String;

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    if-eqz p1, :cond_c

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaub;->zzdun:I

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    .line 4
    :goto_d
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzave;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaug;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzave;->type:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzave;->zzdun:I

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzave;->zzdun:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzave;->type:Ljava/lang/String;

    return-object v0
.end method
