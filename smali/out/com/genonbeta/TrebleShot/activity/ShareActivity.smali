.class public Lcom/genonbeta/TrebleShot/activity/ShareActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ShareActivity.java"

# interfaces
.implements Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;
.implements Lcom/genonbeta/TrebleShot/app/Activity$OnPreloadArgumentWatcher;
.implements Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;
    }
.end annotation


# static fields
.field public static final ACTION_SEND:Ljava/lang/String; = "genonbeta.intent.action.TREBLESHOT_SEND"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "genonbeta.intent.action.TREBLESHOT_SEND_MULTIPLE"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "extraDeviceId"

.field public static final EXTRA_FILENAME_LIST:Ljava/lang/String; = "extraFileNames"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "extraGroupId"

.field public static final TAG:Ljava/lang/String; = "ShareActivity"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

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

.field private mPreLoadingBundle:Landroid/os/Bundle;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressTextLeft:Landroid/widget/TextView;

.field private mProgressTextRight:Landroid/widget/TextView;

.field private mTask:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

.field private mTextMain:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mPreLoadingBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mTask:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Landroid/widget/TextView;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressTextLeft:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Landroid/widget/TextView;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressTextRight:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)Landroid/widget/TextView;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mTextMain:Landroid/widget/TextView;

    return-object p0
.end method

.method public static createFolderStructure(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/util/List;Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/io/DocumentFile;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;",
            ">;",
            "Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/io/DocumentFile;->listFiles()[Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_9f

    .line 60
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 61
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    array-length v2, p0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 64
    :cond_29
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_9f

    aget-object v2, p0, v1

    .line 65
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 66
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v3

    .line 67
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getAnchorListener()Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/activity/ShareActivity;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    :cond_52
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->getInterrupter()Lcom/genonbeta/android/framework/util/Interrupter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_9f

    .line 72
    :cond_5d
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_7c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7d

    :cond_7c
    const/4 v4, 0x0

    :goto_7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v2, v3, p2, p3}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->createFolderStructure(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Ljava/util/List;Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;)V

    goto :goto_9c

    .line 81
    :cond_8f
    :try_start_8f
    new-instance v3, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;

    invoke-direct {v3, v2, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$SelectableStream;-><init>(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_9f
    :goto_9f
    return-void
.end method


# virtual methods
.method public varargs createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public onAttachedToTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 92
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 93
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v0

    :goto_1a
    const-string v1, "genonbeta.intent.action.TREBLESHOT_SEND"

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    const-string v4, "genonbeta.intent.action.TREBLESHOT_SEND_MULTIPLE"

    if-nez v1, :cond_4b

    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "android.intent.action.SEND"

    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_4b

    :cond_3c
    const p1, 0x7f1100e1

    .line 154
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 155
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->finish()V

    goto/16 :goto_12f

    .line 101
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 102
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "genonbeta.intent.action.EDIT_TEXT"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraText"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->finish()V

    goto/16 :goto_12f

    .line 107
    :cond_7a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.extra.STREAM"

    const-string v6, "extraFileNames"

    if-nez v4, :cond_b8

    .line 111
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    goto :goto_b8

    .line 117
    :cond_90
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    .line 112
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    :cond_d2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_d5
    :goto_d5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_e9

    const p1, 0x7f1101c5

    .line 128
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->finish()V

    goto :goto_12f

    :cond_e9
    const p1, 0x7f090199

    .line 131
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0901ea

    .line 132
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressTextLeft:Landroid/widget/TextView;

    const p1, 0x7f0901eb

    .line 133
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressTextRight:Landroid/widget/TextView;

    const p1, 0x7f0901ee

    .line 134
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mTextMain:Landroid/widget/TextView;

    const p1, 0x7f0900a8

    .line 135
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mCancelButton:Landroid/widget/Button;

    .line 137
    new-instance v2, Lcom/genonbeta/TrebleShot/activity/ShareActivity$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ShareActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mFileUris:Ljava/util/List;

    .line 148
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mFileNames:Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->checkForTasks()Z

    :goto_12f
    return-void
.end method

.method protected onPreviousRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 4

    .line 168
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onPreviousRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    .line 170
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    if-eqz v0, :cond_f

    .line 171
    check-cast p1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mTask:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    .line 172
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->setAnchorListener(Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    goto :goto_39

    .line 174
    :cond_f
    new-instance p1, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mFileUris:Ljava/util/List;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mFileNames:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mTask:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    const v0, 0x7f1100f7

    .line 176
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 177
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setAnchorListener(Lcom/genonbeta/TrebleShot/service/WorkerService$OnAttachListener;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setContentIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    .line 181
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mTask:Lcom/genonbeta/TrebleShot/task/OrganizeShareRunningTask;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->attachRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V

    :goto_39
    return-void
.end method

.method public passPreLoadingArguments()Landroid/os/Bundle;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mPreLoadingBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public updateProgress(II)V
    .registers 4

    .line 203
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 206
    :cond_7
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/ShareActivity;II)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 217
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public updateText(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Ljava/lang/String;)V
    .registers 4

    .line 222
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 225
    :cond_7
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->publishStatusText(Ljava/lang/String;)Z

    .line 227
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;

    invoke-direct {p1, p0, p2}, Lcom/genonbeta/TrebleShot/activity/ShareActivity$3;-><init>(Lcom/genonbeta/TrebleShot/activity/ShareActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/ShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
