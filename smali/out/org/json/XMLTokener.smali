.class public Lorg/json/XMLTokener;
.super Lorg/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 43
    sget-object v1, Lorg/json/XML;->AMP:Ljava/lang/Character;

    const-string v2, "amp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    sget-object v1, Lorg/json/XML;->APOS:Ljava/lang/Character;

    const-string v2, "apos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    const-string v2, "gt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    sget-object v1, Lorg/json/XML;->LT:Ljava/lang/Character;

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    sget-object v1, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    const-string v2, "quot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static unescapeEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_5f

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5f

    :cond_9
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_39

    const/4 v1, 0x1

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    .line 162
    :cond_27
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 164
    :goto_2f
    new-instance v2, Ljava/lang/String;

    new-array v3, v1, [I

    aput p0, v3, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([III)V

    return-object v2

    .line 166
    :cond_39
    sget-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-nez v0, :cond_5a

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    :goto_5f
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :cond_5
    invoke-virtual {p0}, Lorg/json/XMLTokener;->more()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 68
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ltz v1, :cond_5

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_5

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    const-string v0, "Unclosed CDATA"

    .line 77
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public nextContent()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_15

    .line 100
    sget-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    return-object v0

    .line 102
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1a
    if-nez v0, :cond_25

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    if-ne v0, v1, :cond_33

    .line 108
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    const/16 v3, 0x26

    if-ne v0, v3, :cond_3f

    .line 112
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 114
    :cond_3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :goto_42
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    goto :goto_1a
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    :goto_5
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 132
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x23

    if-ne v0, v1, :cond_14

    goto :goto_37

    :cond_14
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_21

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p1}, Lorg/json/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing \';\' in XML entity: &"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    .line 133
    :cond_37
    :goto_37
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public nextMeta()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_64

    const/16 v1, 0x27

    if-eq v0, v1, :cond_52

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_4f

    const/16 v3, 0x21

    if-eq v0, v3, :cond_4c

    const/16 v4, 0x22

    if-eq v0, v4, :cond_52

    packed-switch v0, :pswitch_data_6e

    .line 219
    :goto_1f
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 221
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_2c
    if-eqz v0, :cond_3a

    if-eq v0, v1, :cond_3a

    if-eq v0, v2, :cond_3a

    if-eq v0, v3, :cond_3a

    if-eq v0, v4, :cond_3a

    packed-switch v0, :pswitch_data_7a

    goto :goto_1f

    .line 233
    :cond_3a
    :pswitch_3a
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 234
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 204
    :pswitch_40
    sget-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    return-object v0

    .line 196
    :pswitch_43
    sget-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    return-object v0

    .line 200
    :pswitch_46
    sget-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    return-object v0

    .line 194
    :pswitch_49
    sget-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    return-object v0

    .line 202
    :cond_4c
    sget-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    return-object v0

    .line 198
    :cond_4f
    sget-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-object v0

    .line 209
    :cond_52
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    if-eqz v1, :cond_5d

    if-ne v1, v0, :cond_52

    .line 214
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_5d
    const-string v0, "Unterminated string"

    .line 211
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_64
    const-string v0, "Misshaped meta tag"

    .line 192
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b

    nop

    :pswitch_data_6e
    .packed-switch 0x3c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x3c
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 255
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_9f

    const/16 v1, 0x27

    if-eq v0, v1, :cond_76

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_73

    const/16 v3, 0x21

    if-eq v0, v3, :cond_70

    const/16 v4, 0x22

    if-eq v0, v4, :cond_76

    packed-switch v0, :pswitch_data_a8

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    :goto_24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 300
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    if-eqz v0, :cond_5b

    if-eq v0, v1, :cond_54

    if-eq v0, v2, :cond_4c

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_4c

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_4c

    if-eq v0, v3, :cond_4c

    if-eq v0, v4, :cond_54

    packed-switch v0, :pswitch_data_b4

    goto :goto_24

    .line 313
    :cond_4c
    :pswitch_4c
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 314
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_54
    :pswitch_54
    const-string v0, "Bad character in a name"

    .line 318
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 305
    :cond_5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_60
    sget-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    return-object v0

    .line 262
    :pswitch_63
    sget-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    return-object v0

    .line 266
    :pswitch_66
    sget-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    return-object v0

    :pswitch_69
    const-string v0, "Misplaced \'<\'"

    .line 260
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 268
    :cond_70
    sget-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    return-object v0

    .line 264
    :cond_73
    sget-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-object v0

    .line 277
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    :goto_7b
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v2

    if-eqz v2, :cond_98

    if-ne v2, v0, :cond_88

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_88
    const/16 v3, 0x26

    if-ne v2, v3, :cond_94

    .line 287
    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 289
    :cond_94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_98
    const-string v0, "Unterminated string"

    .line 281
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_9f
    const-string v0, "Misshaped element"

    .line 258
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    goto :goto_a7

    :goto_a6
    throw v0

    :goto_a7
    goto :goto_a6

    :pswitch_data_a8
    .packed-switch 0x3c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x3c
        :pswitch_54
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .registers 10

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 340
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_16

    .line 348
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v4

    if-nez v4, :cond_11

    return-void

    .line 352
    :cond_11
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    const/4 v3, 0x0

    :cond_17
    :goto_17
    move v5, v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v0, :cond_2d

    .line 364
    aget-char v6, v1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_25

    const/4 v4, 0x0

    goto :goto_2e

    :cond_25
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v0, :cond_2a

    sub-int/2addr v5, v0

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2d
    const/4 v4, 0x1

    :goto_2e
    if-eqz v4, :cond_31

    return-void

    .line 382
    :cond_31
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v4

    if-nez v4, :cond_38

    return-void

    .line 390
    :cond_38
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_17

    sub-int/2addr v3, v0

    goto :goto_17
.end method
