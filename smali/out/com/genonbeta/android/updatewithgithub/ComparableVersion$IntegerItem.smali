.class Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;
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
    name = "IntegerItem"
.end annotation


# static fields
.field private static final BIG_INTEGER_ZERO:Ljava/math/BigInteger;

.field public static final ZERO:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->BIG_INTEGER_ZERO:Ljava/math/BigInteger;

    .line 63
    new-instance v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;

    invoke-direct {v0}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;-><init>()V

    sput-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->ZERO:Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->BIG_INTEGER_ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;)I
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 88
    sget-object p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->BIG_INTEGER_ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 91
    :cond_d
    invoke-interface {p1}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$Item;->getType()I

    move-result v1

    if-eqz v1, :cond_35

    if-eq v1, v0, :cond_34

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    return v0

    .line 102
    :cond_19
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

    :cond_34
    return v0

    .line 93
    :cond_35
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    check-cast p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;

    iget-object p1, p1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .registers 3

    .line 82
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->BIG_INTEGER_ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/ComparableVersion$IntegerItem;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
