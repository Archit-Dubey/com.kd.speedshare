.class public final enum Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
.super Ljava/lang/Enum;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

.field public static final enum CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

.field public static final enum CANCEL_CURRENT:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

.field public static final enum CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 107
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    .line 108
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    const-string v1, "CANCEL_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    .line 109
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    const-string v1, "CANCEL_CURRENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_CURRENT:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    .line 105
    sget-object v5, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CONTINUE:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    aput-object v5, v1, v2

    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->CANCEL_ALL:Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->$VALUES:[Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 2

    .line 105
    const-class v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;
    .registers 1

    .line 105
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->$VALUES:[Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    invoke-virtual {v0}, [Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/CoolSocket/CoolTransfer$Flag;

    return-object v0
.end method
