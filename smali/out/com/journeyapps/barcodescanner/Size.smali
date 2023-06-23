.class public Lcom/journeyapps/barcodescanner/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/journeyapps/barcodescanner/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    .line 16
    iput p2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/journeyapps/barcodescanner/Size;)I
    .registers 4

    .line 95
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v0, v0, v1

    .line 96
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v1, v1, p1

    if-ge v1, v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    if-le v1, v0, :cond_14

    const/4 p1, -0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 8
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Size;->compareTo(Lcom/journeyapps/barcodescanner/Size;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 117
    :cond_12
    check-cast p1, Lcom/journeyapps/barcodescanner/Size;

    .line 119
    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public fitsIn(Lcom/journeyapps/barcodescanner/Size;)Z
    .registers 4

    .line 86
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gt v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 125
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public rotate()Lcom/journeyapps/barcodescanner/Size;
    .registers 4

    .line 27
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scale(II)Lcom/journeyapps/barcodescanner/Size;
    .registers 6

    .line 39
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    mul-int v1, v1, p1

    div-int/2addr v1, p2

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v2, v2, p1

    div-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 5

    .line 69
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v0, v0, v1

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, v2

    if-gt v0, v1, :cond_1d

    .line 71
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, p1

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    div-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0

    .line 74
    :cond_1d
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, p1

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    div-int/2addr v1, v2

    invoke-direct {v0, v1, p1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public scaleFit(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 5

    .line 51
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v0, v0, v1

    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, v2

    if-lt v0, v1, :cond_1d

    .line 53
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, p1

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    div-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0

    .line 56
    :cond_1d
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    mul-int v1, v1, p1

    iget v2, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    div-int/2addr v1, v2

    invoke-direct {v0, v1, p1}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
