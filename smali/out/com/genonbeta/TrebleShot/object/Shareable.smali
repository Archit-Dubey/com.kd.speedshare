.class public Lcom/genonbeta/TrebleShot/object/Shareable;
.super Ljava/lang/Object;
.source "Shareable.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# instance fields
.field public date:J

.field public fileName:Ljava/lang/String;

.field public friendlyName:Ljava/lang/String;

.field public id:J

.field private isSelected:Z

.field public mimeType:Ljava/lang/String;

.field public size:J

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->isSelected:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V
    .registers 12

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->isSelected:Z

    .line 30
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->id:J

    .line 31
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->friendlyName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->fileName:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->mimeType:Ljava/lang/String;

    .line 34
    iput-wide p6, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->date:J

    .line 35
    iput-wide p8, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->size:J

    .line 36
    iput-object p10, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 7

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_1e

    aget-object v3, p1, v2

    .line 43
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->friendlyName:Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    return v1
.end method

.method public comparisonSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 100
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/object/Shareable;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/genonbeta/TrebleShot/object/Shareable;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/Shareable;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_13

    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_13
    return p1
.end method

.method public getComparableDate()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->date:J

    return-wide v0
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/Shareable;->getSelectableTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComparableSize()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->size:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->id:J

    return-wide v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->isSelected:Z

    return v0
.end method

.method public searchMatches(Ljava/lang/String;)Z
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->friendlyName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->searchWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setId(J)V
    .registers 3

    .line 88
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->id:J

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    .line 111
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/object/Shareable;->isSelected:Z

    const/4 p1, 0x1

    return p1
.end method
