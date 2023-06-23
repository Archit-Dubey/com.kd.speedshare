.class public Lcom/genonbeta/android/database/SQLValues$Column;
.super Ljava/lang/Object;
.source "SQLValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/database/SQLValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNullable:Z

.field private mType:Lcom/genonbeta/android/database/SQLType;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/database/SQLValues$Column;->setName(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Column;

    .line 52
    invoke-virtual {p0, p2}, Lcom/genonbeta/android/database/SQLValues$Column;->setType(Lcom/genonbeta/android/database/SQLType;)Lcom/genonbeta/android/database/SQLValues$Column;

    .line 53
    invoke-virtual {p0, p3}, Lcom/genonbeta/android/database/SQLValues$Column;->setNullable(Z)Lcom/genonbeta/android/database/SQLValues$Column;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;ZLjava/lang/String;)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/genonbeta/android/database/SQLValues$Column;->setExtra(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Column;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/genonbeta/android/database/SQLValues$Column;->setName(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Column;

    .line 46
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/android/database/SQLValues$Column;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/genonbeta/android/database/SQLType;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mType:Lcom/genonbeta/android/database/SQLType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isNullable()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mNullable:Z

    return v0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Column;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mExtra:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Column;
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setNullable(Z)Lcom/genonbeta/android/database/SQLValues$Column;
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mNullable:Z

    return-object p0
.end method

.method public setType(Lcom/genonbeta/android/database/SQLType;)Lcom/genonbeta/android/database/SQLValues$Column;
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mType:Lcom/genonbeta/android/database/SQLType;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues$Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues$Column;->getType()Lcom/genonbeta/android/database/SQLType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/database/SQLType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues$Column;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "null"

    goto :goto_31

    :cond_2f
    const-string v2, "not null"

    :goto_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/genonbeta/android/database/SQLValues$Column;->getExtra()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/genonbeta/android/database/SQLValues$Column;->mExtra:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4c
    const-string v1, ""

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
