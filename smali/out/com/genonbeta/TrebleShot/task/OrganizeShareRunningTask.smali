.class public Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;
.super Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;
.source "OrganizeShareRunningTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask<",
        "Lcom/genonbeta/TrebleShot/activity/ShareActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mFileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFileUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileUris:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 20

    move-object/from16 v1, p0

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v2, v1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v2

    const v3, 0x7f1100f7

    invoke-virtual {v2, v3}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->updateText(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Ljava/lang/String;)V

    .line 42
    :cond_2f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v0

    int-to-long v5, v0

    invoke-direct {v4, v5, v6}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 46
    :goto_45
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    if-ge v6, v0, :cond_f4

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_f4

    .line 50
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    const v8, 0x7f11023a

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-object v10, v1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileUris:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 50
    invoke-virtual {v0, v8, v9}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->publishStatusText(Ljava/lang/String;)Z

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v8

    check-cast v8, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v8}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v9

    check-cast v9, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    add-int/2addr v9, v7

    .line 54
    invoke-virtual {v0, v8, v9}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->updateProgress(II)V

    .line 58
    :cond_a9
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileUris:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 59
    iget-object v7, v1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->mFileNames:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v7, :cond_bf

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_c0

    :cond_bf
    move-object v7, v8

    .line 62
    :goto_c0
    :try_start_c0
    new-instance v9, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v10

    invoke-direct {v9, v10, v0, v8}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 66
    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 67
    invoke-virtual {v9}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-static {v0, v7, v2, v1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->createFolderStructure(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/util/List;Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;)V

    goto :goto_f0

    :cond_e3
    if-eqz v7, :cond_e8

    .line 71
    invoke-virtual {v9, v7}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->setFriendlyName(Ljava/lang/String;)V

    .line 73
    :cond_e8
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_eb
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_f0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_45

    .line 80
    :cond_f4
    :goto_f4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_155

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_10f

    goto :goto_155

    .line 84
    :cond_10f
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getSelectableTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->publishStatusText(Ljava/lang/String;)Z

    .line 86
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v6

    int-to-long v9, v6

    .line 88
    new-instance v6, Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v11, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 90
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getSelectableTitle()Ljava/lang/String;

    move-result-object v13

    .line 91
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 92
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDocumentFile()Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v16

    sget-object v18, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    move-object v8, v6

    invoke-direct/range {v8 .. v18}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    .line 95
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDirectory()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_151

    .line 96
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;->getDirectory()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    .line 98
    :cond_151
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    .line 101
    :cond_155
    :goto_155
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_16f

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v2

    const v6, 0x7f1100c4

    invoke-virtual {v2, v6}, Lcom/genonbeta/TrebleShot/service/WorkerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->updateText(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Ljava/lang/String;)V

    .line 104
    :cond_16f
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v2, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;

    invoke-direct {v2, v1}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask$1;-><init>(Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;)V

    invoke-virtual {v0, v3, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    new-instance v2, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v3, v5, [Ljava/lang/String;

    const-string v6, "transfer"

    invoke-direct {v2, v6, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/Object;

    const-string v6, "groupId"

    aput-object v6, v3, v5

    const-string v6, "%s = ?"

    .line 122
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/String;

    iget-wide v7, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 123
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    .line 122
    invoke-virtual {v2, v3, v6}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I

    goto :goto_1d5

    .line 125
    :cond_1b8
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Lcom/genonbeta/android/database/DatabaseObject;)J

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    iget-wide v2, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v0, v2, v3}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startInstance(Landroid/content/Context;J)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getService()Lcom/genonbeta/TrebleShot/service/WorkerService;

    move-result-object v0

    iget-wide v2, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v0, v2, v3}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->startInstance(Landroid/content/Context;J)V

    .line 131
    :goto_1d5
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_1e4

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->finish()V

    :cond_1e4
    return-void
.end method
