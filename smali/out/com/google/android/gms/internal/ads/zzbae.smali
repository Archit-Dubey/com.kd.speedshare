.class public final Lcom/google/android/gms/internal/ads/zzbae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;
    .registers 4

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzu(Landroid/view/View;)[I

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-int/2addr v0, v1

    .line 160
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x1

    aget p1, p1, v1

    sub-int/2addr p0, p1

    .line 161
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private static zza(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;
    .registers 6

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "x"

    .line 163
    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    .line 164
    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "start_x"

    .line 165
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "start_y"

    .line 166
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_31} :catch_32

    return-object v0

    :catch_32
    move-exception p0

    const-string p1, "Error occurred while putting signals into JSON object."

    .line 169
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 194
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result p0

    const-string p1, "y"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "relative_to"

    const-string p1, "self"

    .line 199
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "window"

    const-string v3, "relative_to"

    const-string v4, "y"

    const-string v5, "x"

    const-string v6, "height"

    const-string v7, "width"

    .line 8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    if-nez v1, :cond_18

    return-object v8

    :cond_18
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 11
    :try_start_1b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzu(Landroid/view/View;)[I

    move-result-object v12

    new-array v13, v9, [I

    if-eqz v1, :cond_5b

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    aput v14, v13, v11

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    aput v14, v13, v10

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 18
    :goto_33
    instance-of v15, v14, Landroid/view/ViewGroup;

    if-eqz v15, :cond_5b

    .line 19
    move-object v15, v14

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    aget v9, v13, v11

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v13, v11

    .line 20
    move-object v9, v14

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    aget v15, v13, v10

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v13, v10

    .line 21
    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    const/4 v9, 0x2

    goto :goto_33

    .line 24
    :cond_5b
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 27
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v9, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 30
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v9, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    aget v14, v12, v11

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v9, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    aget v14, v12, v10

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v9, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "maximum_visible_width"

    .line 33
    aget v15, v13, v11

    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "maximum_visible_height"

    .line 34
    aget v13, v13, v10

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v9, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "frame"

    .line 36
    invoke-virtual {v8, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 38
    invoke-virtual {v1, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 39
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzbae;->zza(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_d7

    .line 40
    :cond_b6
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-virtual {v9, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v9, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    aget v6, v12, v11

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    aget v5, v12, v10

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v9

    :goto_d7
    const-string v2, "visible_bounds"

    .line 46
    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_dc} :catch_dd

    goto :goto_e2

    :catch_dd
    const-string v0, "Unable to get native ad view bounding box"

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 50
    :goto_e2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcvr:Lcom/google/android/gms/internal/ads/zzaag;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_119

    .line 57
    :try_start_fa
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTemplateTypeName"

    new-array v3, v11, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_fa .. :try_end_10e} :catch_119
    .catch Ljava/lang/SecurityException; {:try_start_fa .. :try_end_10e} :catch_113
    .catch Ljava/lang/IllegalAccessException; {:try_start_fa .. :try_end_10e} :catch_111
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_fa .. :try_end_10e} :catch_10f

    goto :goto_11b

    :catch_10f
    move-exception v0

    goto :goto_114

    :catch_111
    move-exception v0

    goto :goto_114

    :catch_113
    move-exception v0

    :goto_114
    const-string v1, "Cannot access method getTemplateTypeName: "

    .line 63
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_119
    :cond_119
    const-string v0, ""

    :goto_11b
    const/4 v1, -0x1

    .line 64
    :try_start_11c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7b2ddf4e

    if-eq v2, v3, :cond_135

    const v3, 0x78630204

    if-eq v2, v3, :cond_12b

    goto :goto_13e

    :cond_12b
    const-string v2, "medium_template"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    const/4 v1, 0x1

    goto :goto_13e

    :cond_135
    const-string v2, "small_template"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13b
    .catch Lorg/json/JSONException; {:try_start_11c .. :try_end_13b} :catch_151

    if-eqz v0, :cond_13e

    const/4 v1, 0x0

    :cond_13e
    :goto_13e
    const-string v0, "native_template_type"

    if-eqz v1, :cond_14d

    if-eq v1, v10, :cond_148

    .line 69
    :try_start_144
    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_157

    :cond_148
    const/4 v1, 0x2

    .line 67
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_157

    .line 65
    :cond_14d
    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_150
    .catch Lorg/json/JSONException; {:try_start_144 .. :try_end_150} :catch_151

    goto :goto_157

    :catch_151
    move-exception v0

    const-string v1, "Could not log native template signal to JSON"

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_157
    :goto_157
    return-object v8
.end method

.method public static zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "ad_view"

    const-string v3, "relative_to"

    const-string v4, "y"

    const-string v5, "x"

    const-string v6, "height"

    const-string v7, "width"

    .line 99
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_12c

    if-nez p3, :cond_1b

    goto/16 :goto_12c

    .line 102
    :cond_1b
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbae;->zzu(Landroid/view/View;)[I

    move-result-object v9

    .line 103
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_27
    :goto_27
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_27

    .line 106
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzbae;->zzu(Landroid/view/View;)[I

    move-result-object v13

    .line 107
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 108
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p1, v10

    .line 110
    :try_start_51
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 111
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v15, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 114
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x0

    .line 115
    aget v16, v13, v10

    aget v17, v9, v10

    sub-int v10, v16, v17

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v15, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x1

    .line 116
    aget v16, v13, v10

    aget v17, v9, v10

    sub-int v10, v16, v17

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v15, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "frame"

    .line 118
    invoke-virtual {v14, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 120
    invoke-virtual {v12, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_9c

    .line 121
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzbae;->zza(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v15, 0x1

    goto :goto_c6

    .line 122
    :cond_9c
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const/4 v15, 0x0

    .line 123
    invoke-virtual {v10, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v10, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    aget v16, v13, v15

    aget v17, v9, v15

    sub-int v15, v16, v17

    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v10, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v15, 0x1

    .line 126
    aget v13, v13, v15

    aget v16, v9, v15

    sub-int v13, v13, v16

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v10, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_c6
    const-string v13, "visible_bounds"

    .line 128
    invoke-virtual {v14, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    instance-of v10, v12, Landroid/widget/TextView;

    if-eqz v10, :cond_f3

    .line 130
    move-object v10, v12

    check-cast v10, Landroid/widget/TextView;

    const-string v13, "text_color"

    .line 131
    invoke-virtual {v10}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v15

    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "font_size"

    .line 132
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v15
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_e1} :catch_11b

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    float-to-double v2, v15

    :try_start_e6
    invoke-virtual {v14, v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "text"

    .line 133
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f7

    :cond_f3
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :goto_f7
    const-string v2, "is_clickable"

    if-eqz v1, :cond_10d

    .line 135
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_10d

    const/4 v10, 0x1

    goto :goto_10e

    :cond_10d
    const/4 v10, 0x0

    .line 137
    :goto_10e
    invoke-virtual {v14, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_e6 .. :try_end_11a} :catch_11f

    goto :goto_124

    :catch_11b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :catch_11f
    const-string v2, "Unable to get asset views information"

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :goto_124
    move-object/from16 v10, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_27

    :cond_12c
    :goto_12c
    return-object v8
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    .line 145
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_18

    :try_start_6
    const-string v0, "click_point"

    .line 147
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbae;->zza(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object p1

    .line 148
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "asset_id"

    .line 149
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p0

    move-object v0, v1

    goto :goto_19

    :catch_18
    move-exception p0

    :goto_19
    const-string p1, "Error occurred while grabbing click signals."

    .line 152
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_1f
    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdkk;)Z
    .registers 3

    .line 171
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcxa:Lcom/google/android/gms/internal/ads/zzaag;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzgzy:Z

    if-nez p0, :cond_17

    goto :goto_28

    .line 175
    :cond_17
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaav;->zzcxc:Lcom/google/android/gms/internal/ads/zzaag;

    .line 176
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p0

    .line 177
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method private static zzb(Landroid/content/Context;I)I
    .registers 3

    .line 193
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .registers 4

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    const-string v1, "can_show_on_lock_screen"

    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaye;->zzq(Landroid/view/View;)Z

    move-result p1

    .line 93
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "is_keyguard_locked"

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaye;->zzaz(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    const-string p0, "Unable to get lock screen information"

    .line 97
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :goto_26
    return-object v0
.end method

.method public static zzbm(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 179
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaye;->zzas(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    :try_start_c
    const-string v2, "width"

    .line 180
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    .line 181
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzdg(I)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcqx:Lcom/google/android/gms/internal/ads/zzaag;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcqy:Lcom/google/android/gms/internal/ads/zzaag;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    const v0, 0xe9759f

    if-gt p0, v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0
.end method

.method public static zzt(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 4

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 77
    :cond_8
    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcwz:Lcom/google/android/gms/internal/ads/zzaag;

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_37

    const-string v2, "contained_in_scroll_view"

    if-eqz v1, :cond_27

    .line 81
    :try_start_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaye;->zzs(Landroid/view/View;)Z

    move-result p0

    .line 82
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_37

    .line 83
    :cond_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaye;->zzr(Landroid/view/View;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    .line 84
    :goto_34
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_37

    :catch_37
    :goto_37
    return-object v0
.end method

.method private static zzu(Landroid/view/View;)[I
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p0, :cond_8

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_8
    return-object v0
.end method

.method public static zzyb()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .line 186
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 187
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcxb:Lcom/google/android/gms/internal/ads/zzaag;

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x2

    .line 190
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x800033

    .line 191
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v6
.end method
