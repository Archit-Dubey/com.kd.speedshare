.class public final Lcom/google/android/gms/internal/ads/zzbel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahc<",
        "Lcom/google/android/gms/internal/ads/zzbdb;",
        ">;"
    }
.end annotation


# instance fields
.field private zzeka:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_43

    .line 5
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result p3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_43

    .line 8
    :catch_14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Could not parse "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in a video GMSG: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :cond_43
    :goto_43
    return p3
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbco;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbco;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minBufferMs"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    .line 12
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 14
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "socketReceiveBufferSize"

    .line 15
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 17
    :try_start_2a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 18
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbco;->zzdj(I)V

    :cond_31
    if-eqz v1, :cond_3a

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 21
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbco;->zzdk(I)V

    :cond_3a
    if-eqz v2, :cond_43

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 24
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbco;->zzdl(I)V

    :cond_43
    if-eqz v3, :cond_4c

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbco;->zzdm(I)V

    :cond_4c
    if-eqz p1, :cond_68

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbco;->zzdn(I)V
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_55} :catch_56

    goto :goto_68

    :catch_56
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    .line 34
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 14

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdb;

    const-string v0, "action"

    .line 38
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string p1, "Action missing from video GMSG."

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v1, 0x3

    .line 42
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "google.afma.Notify_dt"

    .line 44
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    :cond_56
    const-string v1, "background"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string v0, "color"

    .line 47
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string p1, "Color parameter missing from color video GMSG."

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_72
    :try_start_72
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 52
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdb;->setBackgroundColor(I)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    const-string p1, "Invalid color parameter in video GMSG."

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    :cond_80
    const-string v1, "decoderProps"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c0

    const-string v0, "mimeTypes"

    .line 58
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_9e

    const-string p2, "No MIME types specified for decoder properties inspection."

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    const-string p2, "missingMimeTypes"

    .line 61
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Lcom/google/android/gms/internal/ads/zzbdb;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_9e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ","

    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    :goto_aa
    if-ge v2, v1, :cond_bc

    aget-object v3, p2, v2

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbao;->zzev(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 67
    :cond_bc
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Lcom/google/android/gms/internal/ads/zzbdb;Ljava/util/Map;)V

    return-void

    .line 69
    :cond_c0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzi()Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object v1

    if-nez v1, :cond_cc

    const-string p1, "Could not get underlay container for a video GMSG."

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    :cond_cc
    const-string v3, "new"

    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "position"

    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "y"

    const-string v6, "x"

    if-nez v3, :cond_2e7

    if-eqz v4, :cond_e2

    goto/16 :goto_2e7

    .line 99
    :cond_e2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzj()Lcom/google/android/gms/internal/ads/zzbgh;

    move-result-object v3

    const-string v4, "currentTime"

    if-eqz v3, :cond_12f

    const-string v7, "timeupdate"

    .line 101
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 102
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_100

    const-string p1, "currentTime parameter missing from timeupdate video GMSG."

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_100
    :try_start_100
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 107
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzbgh;->zze(F)V
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_100 .. :try_end_107} :catch_108

    return-void

    :catch_108
    nop

    const-string p2, "Could not parse currentTime parameter from timeupdate video GMSG: "

    .line 110
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11a

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11f

    :cond_11a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    :cond_123
    const-string v7, "skip"

    .line 112
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12f

    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbgh;->zzacn()V

    return-void

    .line 115
    :cond_12f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzze()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object v1

    if-nez v1, :cond_139

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbco;->zzb(Lcom/google/android/gms/internal/ads/zzbdb;)V

    return-void

    :cond_139
    const-string v3, "click"

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 120
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 121
    invoke-static {p1, p2, v6, v2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 122
    invoke-static {p1, p2, v5, v2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, p1

    const/4 v9, 0x0

    move-wide v2, v4

    .line 124
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbco;->zze(Landroid/view/MotionEvent;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 127
    :cond_161
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19f

    const-string p1, "time"

    .line 128
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_177

    const-string p1, "Time parameter missing from currentTime video GMSG."

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_177
    :try_start_177
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 134
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbco;->seekTo(I)V
    :try_end_183
    .catch Ljava/lang/NumberFormatException; {:try_start_177 .. :try_end_183} :catch_184

    return-void

    :catch_184
    nop

    const-string p2, "Could not parse time parameter from currentTime video GMSG: "

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_196

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19b

    :cond_196
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_19b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    :cond_19f
    const-string v3, "hide"

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    const/4 p1, 0x4

    .line 139
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbco;->setVisibility(I)V

    return-void

    :cond_1ac
    const-string v3, "load"

    .line 140
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbco;->zzhx()V

    return-void

    :cond_1b8
    const-string v3, "loadControl"

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 143
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Lcom/google/android/gms/internal/ads/zzbco;Ljava/util/Map;)V

    return-void

    :cond_1c4
    const-string v3, "muted"

    .line 144
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 145
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1dc

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbco;->zzyy()V

    return-void

    .line 148
    :cond_1dc
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbco;->zzyz()V

    return-void

    :cond_1e0
    const-string v3, "pause"

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbco;->pause()V

    return-void

    :cond_1ec
    const-string v3, "play"

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbco;->play()V

    return-void

    :cond_1f8
    const-string v3, "show"

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_204

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbco;->setVisibility(I)V

    return-void

    :cond_204
    const-string v3, "src"

    .line 155
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_260

    .line 156
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string v3, "demuxed"

    .line 158
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_25c

    .line 160
    :try_start_221
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 162
    :goto_22d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_23c

    .line 163
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4
    :try_end_239
    .catch Lorg/json/JSONException; {:try_start_221 .. :try_end_239} :catch_23e

    add-int/lit8 v4, v4, 0x1

    goto :goto_22d

    :cond_23c
    move-object v0, v3

    goto :goto_25c

    :catch_23e
    nop

    const-string v0, "Malformed demuxed URL list for playback: "

    .line 167
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_250

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_255

    :cond_250
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_255
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 169
    :cond_25c
    :goto_25c
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbco;->zzc(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_260
    const-string v3, "touchMove"

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_287

    .line 171
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "dx"

    .line 172
    invoke-static {v0, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "dy"

    .line 173
    invoke-static {v0, p2, v4, v2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    int-to-float v0, v3

    int-to-float p2, p2

    .line 174
    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbco;->zza(FF)V

    .line 175
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeka:Z

    if-nez p2, :cond_286

    .line 176
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzur()V

    .line 177
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeka:Z

    :cond_286
    return-void

    :cond_287
    const-string p1, "volume"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c0

    .line 179
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_29d

    const-string p1, "Level parameter missing from volume video GMSG."

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_29d
    :try_start_29d
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 184
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbco;->setVolume(F)V
    :try_end_2a4
    .catch Ljava/lang/NumberFormatException; {:try_start_29d .. :try_end_2a4} :catch_2a5

    return-void

    :catch_2a5
    nop

    const-string p2, "Could not parse volume parameter from volume video GMSG: "

    .line 187
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2b7

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2bc

    :cond_2b7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2bc
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    :cond_2c0
    const-string p1, "watermark"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2cc

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbco;->zzza()V

    return-void

    :cond_2cc
    const-string p1, "Unknown video action: "

    .line 190
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2dd

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e3

    :cond_2dd
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2e3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_2e7
    :goto_2e7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-static {v0, p2, v6, v2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 78
    invoke-static {v0, p2, v5, v2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "w"

    const/4 v7, -0x1

    .line 80
    invoke-static {v0, p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    const-string v8, "h"

    .line 82
    invoke-static {v0, p2, v8, v7}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 83
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzq()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 84
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzzp()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    :try_start_312
    const-string p1, "player"

    .line 85
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_31e
    .catch Ljava/lang/NumberFormatException; {:try_start_312 .. :try_end_31e} :catch_320

    move v8, v2

    goto :goto_321

    :catch_320
    const/4 v8, 0x0

    :goto_321
    const-string p1, "spherical"

    .line 89
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v3, :cond_350

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzze()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object p1

    if-nez p1, :cond_350

    .line 91
    new-instance v10, Lcom/google/android/gms/internal/ads/zzbdc;

    const-string p1, "flags"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/ads/zzbdc;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 92
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(IIIIIZLcom/google/android/gms/internal/ads/zzbdc;)V

    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzze()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object p1

    if-eqz p1, :cond_34f

    .line 95
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbel;->zza(Lcom/google/android/gms/internal/ads/zzbco;Ljava/util/Map;)V

    :cond_34f
    return-void

    .line 97
    :cond_350
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(IIII)V

    return-void
.end method
