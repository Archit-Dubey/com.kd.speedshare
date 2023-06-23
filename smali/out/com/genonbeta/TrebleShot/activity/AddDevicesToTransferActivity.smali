.class public Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "AddDevicesToTransferActivity.java"

# interfaces
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;
.implements Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;


# static fields
.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extraDeviceId"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "extraGroupId"

.field public static final REQUEST_CODE_CHOOSE_DEVICE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mFilter:Landroid/content/IntentFilter;

.field private mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

.field private mLayoutStatusContainer:Landroid/view/ViewGroup;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressTextLeft:Landroid/widget/TextView;

.field private mProgressTextRight:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTask:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mFilter:Landroid/content/IntentFilter;

    .line 58
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->startConnectionManagerActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mTask:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Landroid/widget/TextView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressTextLeft:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)Landroid/widget/TextView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressTextRight:Landroid/widget/TextView;

    return-object p0
.end method

.method private startConnectionManagerActivity()V
    .registers 4

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f11014d

    .line 287
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraActivitySubtitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startInstance(Landroid/content/Context;J)V
    .registers 5

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extraGroupId"

    .line 74
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkGroupIntegrity()Z
    .registers 7

    const-string v0, "extraGroupId"

    const/4 v1, 0x1

    .line 222
    :try_start_3
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 225
    new-instance v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_48

    .line 228
    :try_start_24
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    return v1

    .line 230
    :catch_2e
    :try_start_2e
    new-instance v0, Ljava/lang/Exception;

    const v2, 0x7f1100f4

    invoke-virtual {p0, v2}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_3b
    new-instance v0, Ljava/lang/Exception;

    const v2, 0x7f11018b

    invoke-virtual {p0, v2}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_48} :catch_48

    :catch_48
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method

.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4

    const v0, 0x7f0900c0

    .line 245
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 5

    .line 250
    new-instance v0, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-direct {v0, v1, p1, p2}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    const p1, 0x7f1100c3

    .line 252
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 253
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setAnchorListener(Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 254
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setContentIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 255
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    .line 257
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->attachRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 263
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_49

    if-nez p1, :cond_49

    if-eqz p3, :cond_49

    const-string p1, "extraDeviceId"

    .line 157
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_49

    const-string p2, "extraConnectionAdapter"

    .line 158
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 159
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    :try_start_22
    new-instance p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {p3, p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v0, p1, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 167
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 169
    invoke-virtual {p0, p3, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->doCommunicate(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_3e

    goto :goto_49

    :catch_3e
    const p1, 0x7f110107

    const/4 p2, 0x0

    .line 171
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_49
    :goto_49
    return-void
.end method

.method public onAttachedToTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 2

    .line 216
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->takeOnProcessMode()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 81
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 83
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->checkGroupIntegrity()Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    const p1, 0x7f090201

    .line 88
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 89
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 91
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string v2, "groupId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    const-string v1, "useHorizontalView"

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v0, 0x7f090199

    .line 95
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0901ea

    .line 96
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressTextLeft:Landroid/widget/TextView;

    const v0, 0x7f0901eb

    .line 97
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressTextRight:Landroid/widget/TextView;

    const v0, 0x7f0900c4

    .line 98
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f09011c

    .line 99
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mLayoutStatusContainer:Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09009a

    .line 103
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    if-nez v0, :cond_90

    .line 106
    const-class v0, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/fragment/TransferAssigneeListFragment;

    .line 109
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 115
    :cond_90
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->resetStatusViews()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 145
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_37

    const v1, 0x7f090060

    if-ne v0, v1, :cond_f

    goto :goto_37

    :cond_f
    const v1, 0x7f090061

    if-ne v0, v1, :cond_32

    .line 129
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1101ad

    .line 131
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11014c

    .line 132
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110033

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_45

    .line 137
    :cond_32
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 124
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mTask:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    if-eqz p1, :cond_42

    .line 125
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupt()Z

    .line 127
    :cond_42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->finish()V

    :goto_45
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 209
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPreviousRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 3

    .line 181
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onPreviousRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 183
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    if-eqz v0, :cond_e

    .line 184
    check-cast p1, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mTask:Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;

    .line 185
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/task/AddDeviceRunningTask;->setAnchorListener(Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    :cond_e
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 199
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->checkGroupIntegrity()Z

    move-result v0

    if-nez v0, :cond_13

    .line 203
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->finish()V

    :cond_13
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 192
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onStart()V

    .line 193
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->checkForTasks()Z

    return-void
.end method

.method public resetStatusViews()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 269
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 272
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mLayoutStatusContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public takeOnProcessMode()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mLayoutStatusContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$3;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateProgress(II)V
    .registers 4

    .line 307
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 310
    :cond_7
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity$4;-><init>(Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;II)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/AddDevicesToTransferActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method
