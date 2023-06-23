.class public Lorg/json/JSONPointer;
.super Ljava/lang/Object;
.source "JSONPointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/JSONPointer$Builder;
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"


# instance fields
.field private final refTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_69

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_62

    :cond_14
    const-string v0, "#/"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_31

    const/4 v0, 0x2

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_23
    const-string v0, "utf-8"

    .line 151
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_3c

    :catch_2a
    move-exception p1

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 155
    :cond_31
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    :goto_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_59

    aget-object v2, p1, v1

    .line 162
    iget-object v3, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/json/JSONPointer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_59
    return-void

    .line 158
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "a JSON pointer should start with \'/\' or \'#/\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_62
    :goto_62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    return-void

    .line 141
    :cond_69
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pointer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_72

    :goto_71
    throw p1

    :goto_72
    goto :goto_71
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    return-void
.end method

.method public static builder()Lorg/json/JSONPointer$Builder;
    .registers 1

    .line 125
    new-instance v0, Lorg/json/JSONPointer$Builder;

    invoke-direct {v0}, Lorg/json/JSONPointer$Builder;-><init>()V

    return-object v0
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "~"

    const-string v1, "~0"

    .line 252
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    const-string v1, "~1"

    .line 253
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 254
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "\\\""

    .line 255
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readByIndexToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONPointerException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 214
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 215
    check-cast p1, Lorg/json/JSONArray;

    .line 216
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_4a

    if-ge v2, v3, :cond_2b

    .line 221
    :try_start_e
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_12} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_4a

    return-object p1

    :catch_13
    move-exception p1

    .line 223
    :try_start_14
    new-instance v3, Lorg/json/JSONPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading value at index position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, p1}, Lorg/json/JSONPointerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 217
    :cond_2b
    new-instance v3, Lorg/json/JSONPointerException;

    const-string v4, "index %d is out of bounds - the array has %d elements"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    .line 218
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    .line 217
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p1

    .line 226
    new-instance v2, Lorg/json/JSONPointerException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "%s is not an array index"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lorg/json/JSONPointerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "~1"

    const-string v1, "/"

    .line 171
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "~0"

    const-string v1, "~"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\""

    const-string v1, "\""

    .line 172
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\"

    const-string v1, "\\"

    .line 173
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public queryFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONPointerException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    .line 191
    :cond_9
    iget-object v0, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2a

    .line 193
    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONPointer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 194
    :cond_2a
    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_33

    .line 195
    invoke-direct {p0, p1, v1}, Lorg/json/JSONPointer;->readByIndexToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 197
    :cond_33
    new-instance v0, Lorg/json/JSONPointerException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "value [%s] is not an array or object therefore its key %s cannot be resolved"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2f

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lorg/json/JSONPointer;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 240
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIFragment()Ljava/lang/String;
    .registers 5

    .line 264
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lorg/json/JSONPointer;->refTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2f

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 268
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_35

    :goto_34
    throw v1

    :goto_35
    goto :goto_34
.end method
