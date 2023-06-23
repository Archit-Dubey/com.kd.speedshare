.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:J

.field private characterPreviousLine:J

.field private eof:Z

.field private index:J

.field private line:J

.field private previous:C

.field private final reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 84
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_10

    .line 68
    :cond_a
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_10
    iput-object p1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lorg/json/JSONTokener;->eof:Z

    .line 70
    iput-boolean p1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 71
    iput-char p1, p0, Lorg/json/JSONTokener;->previous:C

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lorg/json/JSONTokener;->index:J

    const-wide/16 v2, 0x1

    .line 73
    iput-wide v2, p0, Lorg/json/JSONTokener;->character:J

    .line 74
    iput-wide v0, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    .line 75
    iput-wide v2, p0, Lorg/json/JSONTokener;->line:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 94
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private decrementIndexes()V
    .registers 8

    .line 118
    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->index:J

    .line 119
    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    goto :goto_1e

    .line 122
    :cond_12
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_27

    sub-long/2addr v0, v2

    .line 123
    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    goto :goto_27

    .line 120
    :cond_1e
    :goto_1e
    iget-wide v0, p0, Lorg/json/JSONTokener;->line:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->line:J

    .line 121
    iget-wide v0, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    :cond_27
    :goto_27
    return-void
.end method

.method public static dehexchar(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x46

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_15
    const/16 v0, 0x61

    if-lt p0, v0, :cond_20

    const/16 v0, 0x66

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method private incrementIndexes(I)V
    .registers 8

    if-lez p1, :cond_34

    .line 220
    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->index:J

    const-wide/16 v0, 0x0

    const/16 v4, 0xd

    if-ne p1, v4, :cond_1b

    .line 222
    iget-wide v4, p0, Lorg/json/JSONTokener;->line:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/json/JSONTokener;->line:J

    .line 223
    iget-wide v2, p0, Lorg/json/JSONTokener;->character:J

    iput-wide v2, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    .line 224
    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    goto :goto_34

    :cond_1b
    const/16 v5, 0xa

    if-ne p1, v5, :cond_2f

    .line 226
    iget-char p1, p0, Lorg/json/JSONTokener;->previous:C

    if-eq p1, v4, :cond_2c

    .line 227
    iget-wide v4, p0, Lorg/json/JSONTokener;->line:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/json/JSONTokener;->line:J

    .line 228
    iget-wide v2, p0, Lorg/json/JSONTokener;->character:J

    iput-wide v2, p0, Lorg/json/JSONTokener;->characterPreviousLine:J

    .line 230
    :cond_2c
    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    goto :goto_34

    .line 232
    :cond_2f
    iget-wide v0, p0, Lorg/json/JSONTokener;->character:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/json/JSONTokener;->character:J

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public back()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_16

    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    .line 109
    invoke-direct {p0}, Lorg/json/JSONTokener;->decrementIndexes()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    return-void

    .line 107
    :cond_16
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public more()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 168
    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_26

    .line 174
    :try_start_b
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-gtz v0, :cond_17

    .line 175
    iput-boolean v1, p0, Lorg/json/JSONTokener;->eof:Z

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_17
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_1d

    return v1

    :catch_1d
    move-exception v0

    .line 180
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Unable to read the next character from the stream"

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    .line 170
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Unable to preserve stream position"

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lorg/json/JSONTokener;->usePrevious:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 195
    iput-boolean v1, p0, Lorg/json/JSONTokener;->usePrevious:Z

    .line 196
    iget-char v0, p0, Lorg/json/JSONTokener;->previous:C

    goto :goto_10

    .line 199
    :cond_a
    :try_start_a
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_1d

    :goto_10
    if-gtz v0, :cond_16

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lorg/json/JSONTokener;->eof:Z

    return v1

    .line 208
    :cond_16
    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->incrementIndexes(I)V

    int-to-char v0, v0

    .line 209
    iput-char v0, p0, Lorg/json/JSONTokener;->previous:C

    return v0

    :catch_1d
    move-exception v0

    .line 201
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next(C)C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    if-eq v0, p1, :cond_44

    const-string v1, "Expected \'"

    if-lez v0, :cond_2b

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' and instead saw \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    .line 251
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' and instead saw \'\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    :cond_44
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 271
    :cond_5
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p1, :cond_20

    .line 275
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 276
    invoke-virtual {p0}, Lorg/json/JSONTokener;->end()Z

    move-result v2

    if-nez v2, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    const-string p1, "Substring bounds error"

    .line 277
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    .line 281
    :cond_20
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 292
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_a
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-eqz v1, :cond_88

    const/16 v2, 0xa

    if-eq v1, v2, :cond_88

    const/16 v3, 0xd

    if-eq v1, v3, :cond_88

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_22

    if-ne v1, p1, :cond_1e

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 322
    :cond_22
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    const/16 v5, 0x22

    if-eq v1, v5, :cond_83

    const/16 v5, 0x27

    if-eq v1, v5, :cond_83

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_83

    if-eq v1, v4, :cond_83

    const/16 v4, 0x62

    if-eq v1, v4, :cond_7d

    const/16 v4, 0x66

    if-eq v1, v4, :cond_77

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_73

    const/16 v2, 0x72

    if-eq v1, v2, :cond_6f

    const/16 v2, 0x74

    if-eq v1, v2, :cond_69

    const/16 v2, 0x75

    const-string v3, "Illegal escape."

    if-ne v1, v2, :cond_64

    const/4 v1, 0x4

    .line 341
    :try_start_4f
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_5d} :catch_5e

    goto :goto_5

    :catch_5e
    move-exception p1

    .line 343
    invoke-virtual {p0, v3, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    .line 353
    :cond_64
    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    :cond_69
    const/16 v1, 0x9

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 337
    :cond_6f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 331
    :cond_73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_77
    const/16 v1, 0xc

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7d
    const/16 v1, 0x8

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 350
    :cond_83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_88
    const-string p1, "Unterminated string"

    .line 320
    invoke-virtual {p0, p1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    goto :goto_90

    :goto_8f
    throw p1

    :goto_90
    goto :goto_8f
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-eq v1, p1, :cond_1a

    if-eqz v1, :cond_1a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_16

    goto :goto_1a

    .line 384
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_1f

    .line 380
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 382
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1e

    if-eqz v1, :cond_1e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1a

    goto :goto_1e

    .line 409
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_23

    .line 405
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 407
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_55

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_4c

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_19
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2d

    const-string v2, ",:]}/\\\"[{;=#"

    .line 447
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2d

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    goto :goto_19

    .line 451
    :cond_2d
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 457
    invoke-static {v0}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_45
    const-string v0, "Missing value"

    .line 455
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 430
    :cond_4c
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 431
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    return-object v0

    .line 433
    :cond_55
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 434
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    return-object v0

    .line 428
    :cond_5e
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipTo(C)C
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 473
    :try_start_0
    iget-wide v0, p0, Lorg/json/JSONTokener;->index:J

    .line 474
    iget-wide v2, p0, Lorg/json/JSONTokener;->character:J

    .line 475
    iget-wide v4, p0, Lorg/json/JSONTokener;->line:J

    .line 476
    iget-object v6, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const v7, 0xf4240

    invoke-virtual {v6, v7}, Ljava/io/Reader;->mark(I)V

    .line 478
    :cond_e
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v6

    if-nez v6, :cond_21

    .line 483
    iget-object p1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 484
    iput-wide v0, p0, Lorg/json/JSONTokener;->index:J

    .line 485
    iput-wide v2, p0, Lorg/json/JSONTokener;->character:J

    .line 486
    iput-wide v4, p0, Lorg/json/JSONTokener;->line:J

    const/4 p1, 0x0

    return p1

    :cond_21
    if-ne v6, p1, :cond_e

    .line 490
    iget-object p1, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/Reader;->mark(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2d

    .line 494
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    return v6

    :catch_2d
    move-exception p1

    .line 492
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_35

    :goto_34
    throw v0

    :goto_35
    goto :goto_34
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .registers 4

    .line 505
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/json/JSONException;
    .registers 5

    .line 516
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/json/JSONTokener;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/json/JSONTokener;->character:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/json/JSONTokener;->line:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
