.class public Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ViewTransferActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/callback/PowerfulActionModeSupport;
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;
    }
.end annotation


# static fields
.field public static final ACTION_LIST_TRANSFERS:Ljava/lang/String; = "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extraDeviceId"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "extraGroupId"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "extraRequestId"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "extraRequestType"

.field public static final REQUEST_ADD_DEVICES:I = 0x13b5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddDeviceMenu:Landroid/view/MenuItem;

.field private mBackPressedListener:Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

.field private mCnTestMenu:Landroid/view/MenuItem;

.field private mDataCruncher:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;

.field private mDeviceId:Ljava/lang/String;

.field private mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field private mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryMenu:Landroid/view/MenuItem;

.field private mSettingsMenu:Landroid/view/MenuItem;

.field private mShowFilesMenu:Landroid/view/MenuItem;

.field private mToggleBrowserShare:Landroid/view/MenuItem;

.field private mToggleMenu:Landroid/view/MenuItem;

.field private final mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

.field private mTransferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

.field private mWebShareShortcut:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mActiveProcesses:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    .line 89
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Ljava/util/List;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mActiveProcesses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->showMenus()V

    return-void
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    return-object p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)Lcom/genonbeta/TrebleShot/object/TransferObject;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    return-object p0
.end method

.method static synthetic access$402(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/TrebleShot/object/TransferObject;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    return-object p1
.end method

.method private attachListeners(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 430
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mBackPressedListener:Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    return-void
.end method

.method private requestTaskStateUpdate()V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-eqz v0, :cond_14

    .line 494
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.REQUEST_TASK_RUNNING_LIST_CHANGE"

    .line 495
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_14
    return-void
.end method

.method private showMenus()V
    .registers 9

    .line 500
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v0

    iget v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 501
    :goto_d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v3

    iget v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-nez v0, :cond_1f

    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v4, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v4, 0x1

    .line 503
    :goto_20
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mActiveProcesses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 505
    :goto_2b
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_13a

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mRetryMenu:Landroid/view/MenuItem;

    if-eqz v7, :cond_13a

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mShowFilesMenu:Landroid/view/MenuItem;

    if-nez v7, :cond_39

    goto/16 :goto_13a

    :cond_39
    if-nez v4, :cond_42

    if-eqz v5, :cond_3e

    goto :goto_42

    .line 519
    :cond_3e
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_66

    :cond_42
    :goto_42
    if-eqz v5, :cond_4d

    .line 510
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleMenu:Landroid/view/MenuItem;

    const v6, 0x7f110059

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_61

    .line 512
    :cond_4d
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleMenu:Landroid/view/MenuItem;

    if-ne v0, v3, :cond_55

    const v6, 0x7f110087

    goto :goto_5e

    :cond_55
    if-eqz v0, :cond_5b

    const v6, 0x7f110060

    goto :goto_5e

    :cond_5b
    const v6, 0x7f110076

    :goto_5e
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 517
    :goto_61
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 521
    :goto_66
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleBrowserShare:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-boolean v6, v6, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz v6, :cond_72

    const v6, 0x7f11004f

    goto :goto_75

    :cond_72
    const v6, 0x7f11007a

    :goto_75
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 523
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleBrowserShare:Landroid/view/MenuItem;

    if-nez v3, :cond_85

    iget-object v6, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-boolean v6, v6, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz v6, :cond_83

    goto :goto_85

    :cond_83
    const/4 v6, 0x0

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v6, 0x1

    :goto_86
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mWebShareShortcut:Landroid/view/MenuItem;

    if-eqz v3, :cond_95

    iget-object v6, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-boolean v6, v6, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz v6, :cond_95

    const/4 v6, 0x1

    goto :goto_96

    :cond_95
    const/4 v6, 0x0

    :goto_96
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 525
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mCnTestMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mAddDeviceMenu:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mRetryMenu:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mShowFilesMenu:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_105

    .line 530
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_bd

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_105

    .line 531
    :cond_bd
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mSettingsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 536
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x7f09005f

    if-lez v3, :cond_f6

    const/4 v3, 0x0

    .line 537
    :goto_d8
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_f7

    .line 538
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 540
    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v5, v5, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-interface {v0, v4, v2, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    :cond_f6
    const/4 v3, 0x0

    :cond_f7
    const v5, 0x7f110178

    .line 545
    invoke-virtual {p0, v5}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 544
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 547
    invoke-interface {v0, v4, v1, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    goto :goto_10a

    .line 550
    :cond_105
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mSettingsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    :goto_10a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0006

    .line 553
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v4

    iget v4, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v5

    iget v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    add-int/2addr v4, v5

    new-array v1, v1, [Ljava/lang/Object;

    .line 554
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v5

    iget v5, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v6

    iget v6, v6, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 552
    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_13a
    :goto_13a
    return-void
.end method

.method public static startInstance(Landroid/content/Context;J)V
    .registers 5

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraGroupId"

    .line 149
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toggleTask()V
    .registers 10

    .line 559
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->loadAssigneeList(Lcom/genonbeta/android/database/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v6

    .line 562
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_63

    .line 563
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_50

    .line 564
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v0

    iget v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v3

    iget v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    if-lez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eq v0, v1, :cond_50

    .line 565
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 567
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v1

    iget v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    if-lez v1, :cond_42

    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    goto :goto_44

    :cond_42
    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    :goto_44
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mActiveProcesses:Ljava/util/List;

    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    .line 569
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 567
    invoke-virtual {p0, v0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->toggleTaskForAssignee(Lcom/genonbeta/TrebleShot/object/ShowingAssignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Z)V

    goto :goto_6e

    .line 571
    :cond_50
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    iget-object v5, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object v7, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mActiveProcesses:Ljava/util/List;

    .line 572
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Ljava/util/List;Ljava/util/List;Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_6e

    .line 573
    :cond_63
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    move-result-object v0

    iget v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez v0, :cond_6e

    .line 574
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startDeviceAddingActivity()V

    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 6

    .line 438
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090085

    .line 439
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    if-eqz v0, :cond_1a

    .line 441
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 442
    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1

    .line 444
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public findDevice(Ljava/lang/String;)I
    .registers 5

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_2c

    .line 451
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    .line 452
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 453
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    .line 455
    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    return v1

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2c
    const/4 p1, -0x1

    return p1
.end method

.method public getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object v0
.end method

.method public getIndex()Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    return-object v0
.end method

.method public getPowerfulActionMode()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mBackPressedListener:Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 425
    :cond_a
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onBackPressed()V

    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "extraRequestType"

    const-string v1, "extraDeviceId"

    const-string v2, "extraRequestId"

    .line 155
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    .line 157
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->setContentView(I)V

    const p1, 0x7f090084

    .line 159
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    const p1, 0x7f090201

    .line 161
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 162
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 164
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 165
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const v5, 0x7f0700ae

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 166
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 169
    :cond_3e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    const-string v6, "extraGroupId"

    if-eqz v3, :cond_104

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_104

    const/4 v0, 0x0

    .line 171
    :try_start_5d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/genonbeta/android/framework/io/StreamInfo;->getStreamInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/StreamInfo;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested file is: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/genonbeta/android/framework/io/StreamInfo;->friendlyName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    new-instance v3, Lcom/genonbeta/android/database/SQLQuery$Select;

    const-string v7, "transfer"

    new-array v8, v0, [Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "file=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v1, v1, Lcom/genonbeta/android/framework/io/StreamInfo;->friendlyName:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 176
    invoke-virtual {v3, v7, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v1

    .line 175
    invoke-virtual {v2, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object v1

    if-eqz v1, :cond_ec

    .line 181
    new-instance v2, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-direct {v2, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(Lcom/genonbeta/android/database/CursorItem;)V

    .line 182
    new-instance v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v3, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-direct {v1, v3, v4}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 184
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 186
    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 187
    iput-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 189
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 190
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 192
    :cond_cc
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 194
    invoke-virtual {v1, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-direct {v1, p0, v2}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;)V

    .line 197
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 199
    sget-object v1, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->TAG:Ljava/lang/String;

    const-string v2, "Created instance from an file intent. Original has been cleaned and changed to open intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_189

    .line 179
    :cond_ec
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "File is not found in the database"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_f4} :catch_f4

    :catch_f4
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const v1, 0x7f1100f4

    .line 203
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_189

    .line 205
    :cond_104
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 206
    new-instance v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-wide/16 v7, -0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 209
    :try_start_12b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 210
    iput-object v3, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 212
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 213
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 214
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 215
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 216
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_162} :catch_185

    .line 220
    :try_start_162
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    move-result-object v0

    .line 221
    new-instance v4, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    .line 223
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 225
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;

    invoke-direct {v0, p0, v4}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;)V

    .line 226
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/TransferInfoDialog;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_182} :catch_183

    goto :goto_189

    :catch_183
    nop

    goto :goto_189

    :catch_185
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_189
    :goto_189
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-nez v0, :cond_191

    .line 237
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->finish()V

    goto :goto_1ea

    .line 239
    :cond_191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string v3, "argGroupId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 241
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    if-eqz v1, :cond_1ad

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    if-nez v1, :cond_1a8

    goto :goto_1ad

    :cond_1a8
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->directory:Ljava/lang/String;

    goto :goto_1ae

    :cond_1ad
    :goto_1ad
    const/4 v1, 0x0

    :goto_1ae
    const-string v2, "argPath"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090085

    .line 246
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    if-nez v1, :cond_1dd

    .line 249
    const-class v1, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    .line 250
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    .line 252
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 255
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 258
    :cond_1dd
    invoke-direct {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->attachListeners(Landroidx/fragment/app/Fragment;)V

    .line 260
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mMode:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->setOnSelectionTaskListener(Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;)V

    :goto_1ea
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 299
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 300
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09006e

    .line 302
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mCnTestMenu:Landroid/view/MenuItem;

    const v0, 0x7f09006f

    .line 303
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleMenu:Landroid/view/MenuItem;

    const v0, 0x7f090069

    .line 304
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mRetryMenu:Landroid/view/MenuItem;

    const v0, 0x7f09006a

    .line 305
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mShowFilesMenu:Landroid/view/MenuItem;

    const v0, 0x7f09006c

    .line 306
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mAddDeviceMenu:Landroid/view/MenuItem;

    const v0, 0x7f09006d

    .line 307
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mSettingsMenu:Landroid/view/MenuItem;

    const v0, 0x7f090071

    .line 308
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mWebShareShortcut:Landroid/view/MenuItem;

    const v0, 0x7f090070

    .line 309
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mToggleBrowserShare:Landroid/view/MenuItem;

    .line 311
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->showMenus()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_f

    .line 343
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->finish()V

    goto/16 :goto_144

    :cond_f
    const v2, 0x7f09006f

    if-ne v0, v2, :cond_19

    .line 345
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->toggleTask()V

    goto/16 :goto_144

    :cond_19
    const v2, 0x7f09006b

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4a

    .line 347
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110139

    .line 348
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110202

    .line 349
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110027

    .line 350
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110063

    new-instance v2, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$3;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    .line 351
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_144

    :cond_4a
    const v2, 0x7f090069

    const/4 v4, 0x0

    if-ne v0, v2, :cond_65

    .line 360
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v2, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {p0, v2, v3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->recoverIncomingInterruptions(Landroid/content/Context;J)V

    const p1, 0x7f110100

    new-array v0, v4, [Ljava/lang/Object;

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_144

    :cond_65
    const v2, 0x7f09006a

    if-ne v0, v2, :cond_86

    .line 365
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 367
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSavePath(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "filePath"

    .line 366
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_144

    :cond_86
    const v2, 0x7f09006c

    if-ne v0, v2, :cond_90

    .line 369
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startDeviceAddingActivity()V

    goto/16 :goto_144

    :cond_90
    const v2, 0x7f09006e

    if-ne v0, v2, :cond_ce

    .line 371
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v5, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {p1, v5, v6}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->loadAssigneeList(Lcom/genonbeta/android/database/SQLiteDatabase;J)Ljava/util/List;

    move-result-object p1

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_b9

    .line 375
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;

    .line 376
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v0, p0, p1, v3}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog;->show()V

    goto/16 :goto_144

    .line 377
    :cond_b9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_144

    .line 378
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;

    new-instance v2, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$4;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Ljava/util/List;)V

    invoke-direct {v0, p0, p1, v2}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    .line 387
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->show()Landroidx/appcompat/app/AlertDialog;

    goto/16 :goto_144

    .line 389
    :cond_ce
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090070

    if-ne v0, v2, :cond_f4

    .line 390
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-boolean v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    .line 391
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/DatabaseObject;)I

    .line 392
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->showMenus()V

    .line 394
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-boolean p1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz p1, :cond_144

    .line 395
    invoke-static {p0, v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startWebShareActivity(Landroid/content/Context;Z)V

    goto :goto_144

    .line 396
    :cond_f4
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x7f09005f

    if-ne v0, v2, :cond_138

    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_11b

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mTransactionIndex:Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    :cond_11b
    iput-object v3, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDeviceId:Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090085

    .line 403
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;

    if-eqz p1, :cond_144

    .line 405
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->setDeviceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 406
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferFileExplorerFragment;->refreshList()V

    goto :goto_144

    .line 407
    :cond_138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090071

    if-ne v0, v2, :cond_145

    .line 408
    invoke-static {p0, v4}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startWebShareActivity(Landroid/content/Context;Z)V

    :cond_144
    :goto_144
    return v1

    .line 410
    :cond_145
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 292
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .line 320
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->findDevice(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f09006d

    .line 322
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz v0, :cond_1b

    .line 326
    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 327
    :goto_1c
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 328
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    :cond_2b
    if-eqz v0, :cond_30

    .line 331
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 334
    :cond_30
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 3

    .line 274
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onResume()V

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.genonbeta.intent.action.DATABASE_CHANGE"

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TASK_STATUS_CHANGE"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.TASK_RUNNNIG_LIST_CHANGE"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->reconstructGroup()V

    .line 285
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->requestTaskStateUpdate()V

    .line 286
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->updateCalculations()V

    return-void
.end method

.method public reconstructGroup()V
    .registers 3

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-eqz v0, :cond_15

    .line 484
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    move-exception v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->finish()V

    :cond_15
    :goto_15
    return-void
.end method

.method public startDeviceAddingActivity()V
    .registers 5

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string v3, "extraGroupId"

    .line 418
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x13b5

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toggleTaskForAssignee(Lcom/genonbeta/TrebleShot/object/ShowingAssignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Z)V
    .registers 5

    if-eqz p3, :cond_a

    .line 582
    :try_start_2
    iget-wide p2, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->groupId:J

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    invoke-static {p0, p2, p3, v0}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->pauseTransfer(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_39

    .line 584
    :cond_a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p3

    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v0, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    invoke-virtual {p3, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 585
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-static {p0, p3, p1, p2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->startTransferWithTest(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_39

    :catch_1c
    move-exception p2

    .line 588
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const p2, 0x7f110112

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 590
    invoke-virtual {p0, p2, p3}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    const p3, 0x7f110077

    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$5;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/ShowingAssignee;)V

    .line 591
    invoke-virtual {p2, p3, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_39
    return-void
.end method

.method public declared-synchronized updateCalculations()V
    .registers 4

    monitor-enter p0

    .line 616
    :try_start_1
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDataCruncher:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDataCruncher:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->requestRestart()Z

    move-result v0

    if-nez v0, :cond_22

    .line 617
    :cond_d
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$6;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;-><init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask$PostExecuteListener;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->mDataCruncher:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 635
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$CrunchLatestDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 637
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
