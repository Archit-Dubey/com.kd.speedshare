.class public Lcom/genonbeta/android/updatewithgithub/ComparableVersion;
.super Ljava/lang/Object;
.source "ComparableVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;,
        Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;,
        Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;,
        Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/genonbeta/android/updatewithgithub/ComparableVersion;",
        ">;"
    }
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private items:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->parseVersion(Ljava/lang/String;)V

    return-void
.end method

.method private static parseItem(ZLjava/lang/String;)Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;
    .registers 3

    if-eqz p0, :cond_8

    .line 378
    new-instance p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;

    invoke-direct {p0, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    new-instance p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;-><init>(Ljava/lang/String;Z)V

    :goto_e
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion;)I
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->items:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    iget-object p1, p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->items:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 393
    instance-of v0, p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->canonical:Ljava/lang/String;

    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    iget-object p1, p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->canonical:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final parseVersion(Ljava/lang/String;)V
    .registers 12

    .line 303
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->value:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;-><init>(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$1;)V

    iput-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->items:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    .line 307
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->items:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    .line 311
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 312
    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 318
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_ac

    .line 319
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    const/4 v9, 0x1

    if-ne v7, v8, :cond_43

    if-ne v4, v5, :cond_35

    .line 323
    sget-object v5, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->ZERO:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;

    invoke-virtual {v0, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 325
    :cond_35
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->parseItem(ZLjava/lang/String;)Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    :goto_40
    add-int/lit8 v5, v4, 0x1

    goto :goto_a8

    :cond_43
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_7e

    if-ne v4, v5, :cond_4f

    .line 330
    sget-object v5, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->ZERO:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;

    invoke-virtual {v0, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 332
    :cond_4f
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->parseItem(ZLjava/lang/String;)Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    :goto_5a
    add-int/lit8 v5, v4, 0x1

    if-eqz v6, :cond_a8

    .line 337
    invoke-virtual {v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->normalize()V

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_a8

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 342
    new-instance v7, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    invoke-direct {v7, v1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;-><init>(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$1;)V

    invoke-virtual {v0, v7}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    goto :goto_a8

    .line 347
    :cond_7e
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_97

    if-nez v6, :cond_95

    if-le v4, v5, :cond_95

    .line 349
    new-instance v6, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v9}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v6}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    move v5, v4

    :cond_95
    const/4 v6, 0x1

    goto :goto_a8

    :cond_97
    if-eqz v6, :cond_a7

    if-le v4, v5, :cond_a7

    .line 356
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->parseItem(ZLjava/lang/String;)Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    move v5, v4

    :cond_a7
    const/4 v6, 0x0

    :cond_a8
    :goto_a8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e

    .line 364
    :cond_ac
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_bd

    .line 365
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->parseItem(ZLjava/lang/String;)Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_bd
    :goto_bd
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_cd

    .line 369
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    .line 370
    invoke-virtual {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->normalize()V

    goto :goto_bd

    .line 373
    :cond_cd
    iget-object p1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->items:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    invoke-virtual {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->canonical:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->value:Ljava/lang/String;

    return-object v0
.end method
