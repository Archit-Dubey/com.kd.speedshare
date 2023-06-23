.class synthetic Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;
.super Ljava/lang/Object;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 365
    invoke-static {}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->values()[Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I

    :try_start_9
    sget-object v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->STORAGE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I

    sget-object v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->PUBLIC_FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I

    sget-object v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FOLDER:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I

    sget-object v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->RECENT_FILE:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$1;->$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type:[I

    sget-object v1, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->FILE_PART:Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/adapter/FileListAdapter$FileHolderMerger$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
