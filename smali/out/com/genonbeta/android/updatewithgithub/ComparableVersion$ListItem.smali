.class Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;
.super Ljava/util/ArrayList;
.source "ComparableVersion.java"

# interfaces
.implements Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/updatewithgithub/ComparableVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;",
        ">;",
        "Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$1;)V
    .registers 2

    .line 217
    invoke-direct {p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 246
    invoke-virtual {p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->size()I

    move-result p1

    if-nez p1, :cond_b

    return v1

    .line 249
    :cond_b
    invoke-virtual {p0, v1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    .line 250
    invoke-interface {p1, v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I

    move-result p1

    return p1

    .line 252
    :cond_16
    invoke-interface {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_87

    const/4 v4, 0x1

    if-eq v2, v4, :cond_86

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6b

    .line 260
    invoke-virtual {p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 261
    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;

    invoke-virtual {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 263
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    return v1

    .line 264
    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    goto :goto_49

    :cond_48
    move-object p1, v0

    .line 265
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    goto :goto_57

    :cond_56
    move-object v5, v0

    :goto_57
    if-nez p1, :cond_64

    if-nez v5, :cond_5d

    const/4 p1, 0x0

    goto :goto_68

    .line 268
    :cond_5d
    invoke-interface {v5, p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    goto :goto_68

    :cond_64
    invoke-interface {p1, v5}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I

    move-result p1

    :goto_68
    if-eqz p1, :cond_2d

    return p1

    .line 278
    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    return v4

    :cond_87
    return v3
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isNull()Z
    .registers 2

    .line 228
    invoke-virtual {p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method normalize()V
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 234
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;

    .line 235
    invoke-interface {v1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 236
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$ListItem;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x2c

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_24
    const/16 v1, 0x29

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
