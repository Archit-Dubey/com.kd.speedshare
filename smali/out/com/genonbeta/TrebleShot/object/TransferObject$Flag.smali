.class public final enum Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;
.super Ljava/lang/Enum;
.source "TransferObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/object/TransferObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

.field public static final enum DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

.field public static final enum INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

.field public static final enum IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

.field public static final enum PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

.field public static final enum REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;


# instance fields
.field private bytesValue:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 266
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 267
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string v1, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 268
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string v1, "REMOVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 269
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string v1, "IN_PROGRESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 270
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const-string v1, "DONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 264
    sget-object v7, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    aput-object v7, v1, v2

    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    aput-object v2, v1, v3

    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    aput-object v2, v1, v4

    sget-object v2, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->$VALUES:[Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;
    .registers 2

    .line 264
    const-class v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;
    .registers 1

    .line 264
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->$VALUES:[Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    return-object v0
.end method


# virtual methods
.method public getBytesValue()J
    .registers 3

    .line 276
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->bytesValue:J

    return-wide v0
.end method

.method public setBytesValue(J)V
    .registers 3

    .line 281
    iput-wide p1, p0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->bytesValue:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 287
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    .line 288
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 289
    :cond_13
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0
.end method
