.class public final Lcom/google/android/gms/internal/ads/zzdfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzddz<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private zzgvj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfh;->zzgvj:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 4

    .line 4
    check-cast p1, Lorg/json/JSONObject;

    :try_start_2
    const-string v0, "cache_state"

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfh;->zzgvj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    return-void

    :catch_a
    const-string p1, "Unable to get cache_state"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    return-void
.end method
