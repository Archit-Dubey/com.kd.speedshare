.class final Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
.super Ljava/lang/Object;
.source "ExpandedPair.java"


# instance fields
.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

.field private final leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

.field private final mayBeLast:Z

.field private final rightChar:Lcom/google/zxing/oned/rss/DataCharacter;


# direct methods
.method constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 47
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 48
    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 49
    iput-boolean p4, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    return-void
.end method

.method private static equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 92
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static hashNotNull(Ljava/lang/Object;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 81
    instance-of v0, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 84
    :cond_6
    check-cast p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 85
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    iget-object v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 86
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    iget-object v2, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 87
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    iget-object p1, p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 88
    invoke-static {v0, p1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equalsOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    return v1
.end method

.method getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    return-object v0
.end method

.method getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    return-object v0
.end method

.method getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->hashNotNull(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method mayBeLast()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    return v0
.end method

.method public mustBeLast()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    if-nez v1, :cond_22

    const-string v1, "null"

    goto :goto_2a

    .line 76
    :cond_22
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
