.class public final Lcom/google/android/gms/internal/ads/zzdkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field public final responseCode:I

.field public final zzdii:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzdrt:Ljava/lang/String;

.field public final zzdsg:Ljava/lang/String;

.field public final zzgix:J

.field public final zzhai:I


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .registers 11
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v1, ""

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v2, v1

    move-wide v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_13
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "nofill_urls"

    .line 11
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zza(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :cond_2a
    const-string v8, "refresh_interval"

    .line 13
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 14
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_13

    :cond_37
    const-string v8, "gws_query_id"

    .line 15
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_44
    const-string v8, "analytics_query_ad_event_id"

    .line 17
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 18
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_51
    const-string v8, "response_code"

    .line 19
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 20
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_13

    :cond_5e
    const-string v8, "latency"

    .line 21
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v5

    goto :goto_13

    .line 23
    :cond_6b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_13

    .line 25
    :cond_6f
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzdii:Ljava/util/List;

    .line 27
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzhai:I

    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzdrt:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzdsg:Ljava/lang/String;

    .line 30
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdkm;->responseCode:I

    .line 31
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgix:J

    return-void
.end method
