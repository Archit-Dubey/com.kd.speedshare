.class public final Lcom/google/android/gms/internal/ads/zzcsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcqu<",
        "Lcom/google/android/gms/internal/ads/zzdlm;",
        "Lcom/google/android/gms/internal/ads/zzcsd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgfm:Lcom/google/android/gms/internal/ads/zzcix;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcix;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgfm:Lcom/google/android/gms/internal/ads/zzcix;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcqv;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcqv<",
            "Lcom/google/android/gms/internal/ads/zzdlm;",
            "Lcom/google/android/gms/internal/ads/zzcsd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdlg;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgfm:Lcom/google/android/gms/internal/ads/zzcix;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcix;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdlm;

    move-result-object p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcsd;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqv;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcqv;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbtt;Ljava/lang/String;)V

    return-object v1
.end method
