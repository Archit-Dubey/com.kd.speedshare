.class Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;
.super Ljava/lang/Object;
.source "ComparableVersion.java"

# interfaces
.implements Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/updatewithgithub/ComparableVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringItem"
.end annotation


# static fields
.field private static final ALIASES:Ljava/util/Properties;

.field private static final QUALIFIERS:[Ljava/lang/String;

.field private static final RELEASE_VERSION_INDEX:Ljava/lang/String;

.field private static final _QUALIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alpha"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "milestone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v3, "snapshot"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, ""

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v4, "sp"

    aput-object v4, v0, v1

    .line 118
    sput-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->QUALIFIERS:[Ljava/lang/String;

    .line 120
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->_QUALIFIERS:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->ALIASES:Ljava/util/Properties;

    const-string v1, "ga"

    .line 125
    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->ALIASES:Ljava/util/Properties;

    const-string v1, "final"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->ALIASES:Ljava/util/Properties;

    const-string v1, "cr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->_QUALIFIERS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->RELEASE_VERSION_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_26

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    const/4 p2, 0x0

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x61

    if-eq p2, v0, :cond_24

    const/16 v0, 0x62

    if-eq p2, v0, :cond_21

    const/16 v0, 0x6d

    if-eq p2, v0, :cond_1e

    goto :goto_26

    :cond_1e
    const-string p1, "milestone"

    goto :goto_26

    :cond_21
    const-string p1, "beta"

    goto :goto_26

    :cond_24
    const-string p1, "alpha"

    .line 154
    :cond_26
    :goto_26
    sget-object p2, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->ALIASES:Ljava/util/Properties;

    invoke-virtual {p2, p1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->value:Ljava/lang/String;

    return-void
.end method

.method public static comparableQualifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 181
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->_QUALIFIERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->_QUALIFIERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_28
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I
    .registers 5

    if-nez p1, :cond_f

    .line 190
    iget-object p1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->comparableQualifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->RELEASE_VERSION_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 192
    :cond_f
    invoke-interface {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_38

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    return v1

    .line 203
    :cond_1d
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

    .line 197
    :cond_38
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->comparableQualifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;

    iget-object p1, p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->comparableQualifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4b
    return v1
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isNull()Z
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->comparableQualifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->RELEASE_VERSION_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$StringItem;->value:Ljava/lang/String;

    return-object v0
.end method
