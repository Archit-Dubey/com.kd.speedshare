.class public final enum Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;
.super Ljava/lang/Enum;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

.field public static final enum FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

.field public static final enum FILE_PART:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

.field public static final enum FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

.field public static final enum PUBLIC_FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

.field public static final enum RECENT_FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

.field public static final enum STORAGE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 652
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const-string v1, "STORAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->STORAGE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    .line 653
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const-string v1, "FOLDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    .line 654
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const-string v1, "PUBLIC_FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->PUBLIC_FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    .line 655
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const-string v1, "RECENT_FILE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->RECENT_FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    .line 656
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const-string v1, "FILE_PART"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FILE_PART:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    .line 657
    new-instance v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const-string v1, "FILE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    .line 650
    sget-object v8, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->STORAGE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    aput-object v8, v1, v2

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->PUBLIC_FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->RECENT_FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FILE_PART:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->$VALUES:[Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;
    .registers 2

    .line 650
    const-class v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;
    .registers 1

    .line 650
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->$VALUES:[Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    return-object v0
.end method
