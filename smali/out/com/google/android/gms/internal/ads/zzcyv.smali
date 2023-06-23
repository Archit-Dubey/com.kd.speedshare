.class public final Lcom/google/android/gms/internal/ads/zzcyv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field public final zzgrf:Ljava/lang/String;

.field public zzgrg:Ljava/lang/String;

.field public zzgrh:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzgrh:Landroid/os/Bundle;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v1, ""

    move-object v2, v1

    .line 6
    :goto_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    move-object v3, v1

    :cond_22
    const/4 v4, -0x1

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x3b55067a

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3d

    const v6, -0x102de173

    if-eq v5, v6, :cond_33

    goto :goto_46

    :cond_33
    const-string v5, "signal_dictionary"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v4, 0x1

    goto :goto_46

    :cond_3d
    const-string v5, "params"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v4, 0x0

    :cond_46
    :goto_46
    if-eqz v4, :cond_53

    if-eq v4, v7, :cond_4e

    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_15

    .line 13
    :cond_4e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zzb(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v0

    goto :goto_15

    .line 11
    :cond_53
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 17
    :cond_58
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzgrf:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_65
    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzgrh:Landroid/os/Bundle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :cond_8f
    return-void
.end method


# virtual methods
.method final zzo(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcyv;
    .registers 3

    .line 24
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzgrg:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    const-string p1, "{}"

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzgrg:Ljava/lang/String;

    :goto_13
    return-object p0
.end method
