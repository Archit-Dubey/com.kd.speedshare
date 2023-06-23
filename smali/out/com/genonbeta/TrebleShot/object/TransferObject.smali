.class public Lcom/genonbeta/TrebleShot/object/TransferObject;
.super Ljava/lang/Object;
.source "TransferObject.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/object/TransferObject$Virtual;,
        Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;,
        Lcom/genonbeta/TrebleShot/object/TransferObject$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/database/DatabaseObject<",
        "Lcom/genonbeta/TrebleShot/object/TransferGroup;",
        ">;",
        "Lcom/genonbeta/TrebleShot/object/Editable;"
    }
.end annotation


# instance fields
.field public accessPort:I

.field public deviceId:Ljava/lang/String;

.field public directory:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field public fileMimeType:Ljava/lang/String;

.field public fileSize:J

.field public flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

.field public friendlyName:Ljava/lang/String;

.field public groupId:J

.field private mIsSelected:Z

.field public requestId:J

.field public skippedBytes:J

.field public type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 43
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 44
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->mIsSelected:Z

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    .registers 23

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    .line 54
    invoke-direct/range {v0 .. v11}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    .registers 14

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 43
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 44
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->mIsSelected:Z

    .line 59
    iput-object p6, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    .line 61
    iput-wide p9, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 62
    iput-object p8, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    .line 64
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    .line 65
    iput-wide p3, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    .line 66
    iput-object p11, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    .registers 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 43
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 44
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->mIsSelected:Z

    .line 71
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    .line 72
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 43
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 44
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->mIsSelected:Z

    .line 78
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/object/TransferObject;->reconstruct(Lcom/genonbeta/android/database/CursorItem;)V

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 7

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    .line 85
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    return v1
.end method

.method public comparisonSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 100
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-nez v0, :cond_9

    .line 101
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 103
    :cond_9
    check-cast p1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 105
    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_33

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 106
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_31

    :cond_25
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    :cond_31
    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    return p1
.end method

.method public getComparableDate()J
    .registers 3

    .line 216
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    return-wide v0
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 210
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;->getSelectableTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComparableSize()J
    .registers 3

    .line 222
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    return-wide v0
.end method

.method public getId()J
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 229
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%d_%d_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->accessPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "accessPort"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "skippedBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    const-string v2, "directory"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 10

    .line 118
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;->isDivisionObject()Z

    move-result v0

    const-string v1, "type"

    const-string v2, "id"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1b

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v6

    aput-object v1, v0, v5

    const-string v1, "%s = ? AND %s = ?"

    .line 119
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_1b
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v6

    aput-object v1, v0, v5

    const-string v1, "deviceId"

    aput-object v1, v0, v4

    const-string v1, "%s = ? AND %s = ? AND %s = ?"

    .line 120
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_2b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;->isDivisionObject()Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance v1, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "divisionTransfer"

    invoke-direct {v1, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    iget-wide v3, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    .line 123
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    goto :goto_74

    :cond_51
    new-instance v1, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v2, v6, [Ljava/lang/String;

    const-string v7, "transfer"

    invoke-direct {v1, v7, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    .line 124
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    :goto_74
    return-object v0
.end method

.method public isDivisionObject()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->mIsSelected:Z

    return v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 30
    check-cast p3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferObject;->onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 6

    .line 189
    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_35

    :cond_15
    if-nez p3, :cond_21

    .line 194
    :try_start_17
    new-instance p3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-direct {p3, v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 195
    invoke-virtual {p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 198
    :cond_21
    invoke-virtual {p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p3, p2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getIncomingPseudoFile(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/TransferGroup;Z)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 200
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 201
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/DocumentFile;->delete()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    :goto_35
    return-void
.end method

.method public bridge synthetic onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 30
    check-cast p3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferObject;->onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    .line 30
    check-cast p3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferObject;->onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 6

    const-string v0, "flag"

    const-string v1, "name"

    .line 151
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    const-string v1, "file"

    .line 152
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    const-string v1, "size"

    .line 153
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    const-string v1, "mime"

    .line 154
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileMimeType:Ljava/lang/String;

    const-string v1, "id"

    .line 155
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    const-string v1, "groupId"

    .line 156
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    const-string v1, "deviceId"

    .line 157
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    const-string v1, "type"

    .line 158
    invoke-virtual {p1, v1}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 162
    :try_start_46
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    move-result-object v1

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_5c

    .line 164
    :catch_51
    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iput-object v1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 165
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->setBytesValue(J)V

    :goto_5c
    const-string v0, "accessPort"

    .line 168
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->accessPort:I

    const-string v0, "skippedBytes"

    .line 169
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->skippedBytes:J

    const-string v0, "directory"

    .line 170
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 236
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject;->mIsSelected:Z

    const/4 p1, 0x1

    return p1
.end method
