.class public final Lcom/google/android/gms/internal/ads/zzdku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field public final zzhaq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdkk;",
            ">;"
        }
    .end annotation
.end field

.field public final zzhar:Lcom/google/android/gms/internal/ads/zzdkm;

.field public final zzhas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdkt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 13
    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 14
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "responses"

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 18
    :goto_29
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 19
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_configs"

    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 24
    :goto_43
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 25
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/zzdkk;-><init>(Landroid/util/JsonReader;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 26
    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_29

    :cond_56
    const-string v5, "common"

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Landroid/util/JsonReader;)V

    goto :goto_29

    .line 31
    :cond_64
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_29

    .line 32
    :cond_68
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 33
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_11

    :cond_6f
    const-string v5, "actions"

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 36
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 37
    :goto_7a
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 38
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move-object v4, v2

    move-object v5, v4

    .line 41
    :goto_85
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    .line 43
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 44
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_85

    :cond_9c
    const-string v7, "info"

    .line 45
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zzb(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v5

    goto :goto_85

    .line 47
    :cond_a9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_85

    :cond_ad
    if-eqz v4, :cond_b7

    .line 50
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdkt;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzdkt;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_b7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    goto :goto_7a

    .line 53
    :cond_bb
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_11

    .line 55
    :cond_c0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzhas:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzhaq:Ljava/util/List;

    if-eqz v3, :cond_c7

    goto :goto_d8

    .line 60
    :cond_c7
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkm;

    new-instance p1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/StringReader;

    const-string v1, "{}"

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Landroid/util/JsonReader;)V

    :goto_d8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzhar:Lcom/google/android/gms/internal/ads/zzdkm;

    return-void
.end method

.method public static zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzdku;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdkl;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdku;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdku;-><init>(Landroid/util/JsonReader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_a} :catch_10
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_e
    move-exception v0

    goto :goto_21

    :catch_10
    move-exception v0

    goto :goto_19

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_14
    move-exception v0

    goto :goto_19

    :catch_16
    move-exception v0

    goto :goto_19

    :catch_18
    move-exception v0

    .line 5
    :goto_19
    :try_start_19
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkl;

    const-string v2, "unable to parse ServerResponse"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdkl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_e

    .line 6
    :goto_21
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 7
    throw v0
.end method
