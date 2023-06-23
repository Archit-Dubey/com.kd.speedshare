.class final Lcom/google/android/gms/internal/ads/zzagw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahc<",
        "Lcom/google/android/gms/internal/ads/zzbfn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfn;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabk()Lcom/google/android/gms/internal/ads/zzadh;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadh;->zzrz()V

    :cond_b
    return-void
.end method
