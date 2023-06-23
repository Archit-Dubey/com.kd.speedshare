.class public final enum Lcom/genonbeta/TrebleShot/object/TransferObject$Type;
.super Ljava/lang/Enum;
.source "TransferObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/object/TransferObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/object/TransferObject$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

.field public static final enum INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

.field public static final enum OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 260
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 261
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    const-string v1, "OUTGOING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 258
    sget-object v4, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->$VALUES:[Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TransferObject$Type;
    .registers 2

    .line 258
    const-class v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/object/TransferObject$Type;
    .registers 1

    .line 258
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->$VALUES:[Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    return-object v0
.end method
