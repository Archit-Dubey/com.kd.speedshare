.class public final enum Lcom/genonbeta/CoolSocket/CoolTransfer$Status;
.super Ljava/lang/Enum;
.source "CoolTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/CoolSocket/CoolTransfer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

.field public static final enum INTERRUPTED:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

.field public static final enum PENDING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

.field public static final enum RUNNING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 114
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->INTERRUPTED:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    .line 115
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->RUNNING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    .line 116
    new-instance v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    const-string v1, "PENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->PENDING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    .line 112
    sget-object v5, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->INTERRUPTED:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    aput-object v5, v1, v2

    sget-object v2, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->RUNNING:Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->$VALUES:[Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/CoolSocket/CoolTransfer$Status;
    .registers 2

    .line 112
    const-class v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/CoolSocket/CoolTransfer$Status;
    .registers 1

    .line 112
    sget-object v0, Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->$VALUES:[Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    invoke-virtual {v0}, [Lcom/genonbeta/CoolSocket/CoolTransfer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/CoolSocket/CoolTransfer$Status;

    return-object v0
.end method
