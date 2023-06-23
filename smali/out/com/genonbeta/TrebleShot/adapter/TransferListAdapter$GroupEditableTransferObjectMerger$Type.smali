.class public final enum Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;
.super Ljava/lang/Enum;
.source "TransferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

.field public static final enum FILE:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

.field public static final enum FILE_ERROR:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

.field public static final enum FILE_ONGOING:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

.field public static final enum FOLDER:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

.field public static final enum STATUS:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1002
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    const-string v1, "STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->STATUS:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    .line 1003
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    const-string v1, "FOLDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    .line 1004
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    const-string v1, "FILE_ONGOING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE_ONGOING:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    .line 1005
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    const-string v1, "FILE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE_ERROR:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    .line 1006
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    const-string v1, "FILE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    .line 1000
    sget-object v7, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->STATUS:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    aput-object v7, v1, v2

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE_ONGOING:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->FILE_ERROR:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->$VALUES:[Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;
    .registers 2

    .line 1000
    const-class v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;
    .registers 1

    .line 1000
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->$VALUES:[Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$GroupEditableTransferObjectMerger$Type;

    return-object v0
.end method
