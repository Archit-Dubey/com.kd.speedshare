.class public Lorg/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0xc8


# instance fields
.field private comma:Z

.field protected mode:C

.field private final stack:[Lorg/json/JSONObject;

.field private top:I

.field protected writer:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    const/16 v1, 0x69

    .line 100
    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0xc8

    new-array v1, v1, [Lorg/json/JSONObject;

    .line 101
    iput-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    .line 102
    iput v0, p0, Lorg/json/JSONWriter;->top:I

    .line 103
    iput-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 116
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_15

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 134
    :cond_d
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Value out of sequence."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_15
    :goto_15
    :try_start_15
    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_24

    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-ne v0, v1, :cond_24

    .line 119
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 121
    :cond_24
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_29} :catch_35

    .line 128
    iget-char p1, p0, Lorg/json/JSONWriter;->mode:C

    if-ne p1, v2, :cond_31

    const/16 p1, 0x6b

    .line 129
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    :cond_31
    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0

    :catch_35
    move-exception p1

    .line 126
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_3c
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Null pointer"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private end(CC)Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, p1, :cond_13

    .line 165
    new-instance p2, Lorg/json/JSONException;

    const/16 v0, 0x61

    if-ne p1, v0, :cond_d

    const-string p1, "Misplaced endArray."

    goto :goto_f

    :cond_d
    const-string p1, "Misplaced endObject."

    .line 167
    :goto_f
    invoke-direct {p2, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 169
    :cond_13
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->pop(C)V

    .line 171
    :try_start_16
    iget-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1f

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0

    :catch_1f
    move-exception p1

    .line 176
    new-instance p2, Lorg/json/JSONException;

    invoke-direct {p2, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private pop(C)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const-string v1, "Nesting error."

    if-lez v0, :cond_38

    .line 274
    iget-object v2, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    const/16 v2, 0x61

    const/16 v3, 0x6b

    if-nez v0, :cond_15

    const/16 v0, 0x61

    goto :goto_17

    :cond_15
    const/16 v0, 0x6b

    :goto_17
    if-ne v0, p1, :cond_32

    .line 278
    iget p1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/json/JSONWriter;->top:I

    if-nez p1, :cond_24

    const/16 v2, 0x64

    goto :goto_2f

    .line 281
    :cond_24
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    if-nez p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/16 v2, 0x6b

    .line 283
    :goto_2f
    iput-char v2, p0, Lorg/json/JSONWriter;->mode:C

    return-void

    .line 276
    :cond_32
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_38
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private push(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 292
    iget v0, p0, Lorg/json/JSONWriter;->top:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1a

    .line 295
    iget-object v1, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    aput-object p1, v1, v0

    if-nez p1, :cond_f

    const/16 p1, 0x61

    goto :goto_11

    :cond_f
    const/16 p1, 0x6b

    .line 296
    :goto_11
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    .line 297
    iget p1, p0, Lorg/json/JSONWriter;->top:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/json/JSONWriter;->top:I

    return-void

    .line 293
    :cond_1a
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Nesting too deep."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_ad

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_ad

    .line 328
    :cond_b
    instance-of v0, p0, Lorg/json/JSONString;

    if-eqz v0, :cond_3a

    .line 331
    :try_start_f
    check-cast p0, Lorg/json/JSONString;

    invoke-interface {p0}, Lorg/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_33

    .line 335
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 336
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 338
    :cond_1c
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value from toJSONString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_33
    move-exception p0

    .line 333
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 340
    :cond_3a
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4f

    .line 342
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    .line 346
    :try_start_44
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_49} :catch_4a

    return-object p0

    .line 352
    :catch_4a
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_4f
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_a8

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_a8

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_5c

    goto :goto_a8

    .line 359
    :cond_5c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6c

    .line 360
    check-cast p0, Ljava/util/Map;

    .line 361
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 363
    :cond_6c
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7c

    .line 364
    check-cast p0, Ljava/util/Collection;

    .line 365
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 367
    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 368
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 370
    :cond_90
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_9f

    .line 371
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 373
    :cond_9f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ad
    :goto_ad
    const-string p0, "null"

    return-object p0
.end method


# virtual methods
.method public array()Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 147
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_17

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_17

    const/16 v1, 0x61

    if-ne v0, v1, :cond_f

    goto :goto_17

    .line 153
    :cond_f
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    const-string v0, "["

    .line 149
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public endArray()Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x5d

    .line 189
    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x6b

    const/16 v1, 0x7d

    .line 199
    invoke-direct {p0, v0, v1}, Lorg/json/JSONWriter;->end(CC)Lorg/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_67

    .line 214
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_5f

    .line 216
    :try_start_8
    iget-object v0, p0, Lorg/json/JSONWriter;->stack:[Lorg/json/JSONObject;

    iget v1, p0, Lorg/json/JSONWriter;->top:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 218
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 221
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    iget-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    if-eqz v0, :cond_24

    .line 223
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 225
    :cond_24
    iget-object v0, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 226
    iget-object p1, p0, Lorg/json/JSONWriter;->writer:Ljava/lang/Appendable;

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lorg/json/JSONWriter;->comma:Z

    const/16 p1, 0x6f

    .line 228
    iput-char p1, p0, Lorg/json/JSONWriter;->mode:C

    return-object p0

    .line 219
    :cond_3c
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_58} :catch_58

    :catch_58
    move-exception p1

    .line 234
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 237
    :cond_5f
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Misplaced key."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_67
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Null key."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public object()Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 251
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    const/16 v2, 0x69

    if-ne v0, v2, :cond_a

    .line 252
    iput-char v1, p0, Lorg/json/JSONWriter;->mode:C

    .line 254
    :cond_a
    iget-char v0, p0, Lorg/json/JSONWriter;->mode:C

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x61

    if-ne v0, v1, :cond_13

    goto :goto_1b

    .line 260
    :cond_13
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_1b
    const-string v0, "{"

    .line 255
    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 256
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/json/JSONWriter;->push(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lorg/json/JSONWriter;->comma:Z

    return-object p0
.end method

.method public value(D)Lorg/json/JSONWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lorg/json/JSONWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 404
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 416
    invoke-static {p1}, Lorg/json/JSONWriter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Z)Lorg/json/JSONWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const-string p1, "true"

    goto :goto_7

    :cond_5
    const-string p1, "false"

    .line 384
    :goto_7
    invoke-direct {p0, p1}, Lorg/json/JSONWriter;->append(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object p1

    return-object p1
.end method
