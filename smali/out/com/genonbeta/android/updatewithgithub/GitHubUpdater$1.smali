.class Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;
.super Ljava/lang/Thread;
.source "GitHubUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->checkForUpdates(ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

.field final synthetic val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;

.field final synthetic val$popupDialog:Z


# direct methods
.method constructor <init>(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;Z)V
    .registers 4

    .line 53
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    iput-object p2, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;

    iput-boolean p3, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$popupDialog:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    move-object/from16 v7, p0

    const-string v0, "assets"

    .line 57
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 59
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v8, 0x1

    .line 62
    :try_start_b
    sget-object v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    const-string v2, "Checking updates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v1}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v2}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$000(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 66
    new-instance v1, Lcom/genonbeta/android/updatewithgithub/RemoteServer;

    iget-object v2, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v2}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$200(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genonbeta/android/updatewithgithub/RemoteServer;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 67
    invoke-virtual {v1, v9, v9}, Lcom/genonbeta/android/updatewithgithub/RemoteServer;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    const-string v3, "Server connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v2}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v3}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 72
    iget-object v11, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 73
    iget-object v2, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    iget-object v3, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v3}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->getAppLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 75
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_239

    .line 78
    sget-object v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading releases: (total) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 80
    :goto_87
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_239

    .line 82
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "prerelease"

    .line 84
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 86
    iget-object v4, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v4}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$300(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Z

    move-result v4

    if-nez v4, :cond_a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_a4
    const-string v1, "tag_name"

    .line 89
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "name"

    .line 90
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "published_at"

    .line 91
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "body"

    .line 92
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 94
    new-instance v1, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    invoke-direct {v1, v6}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;

    invoke-direct {v2, v11}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v4, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;

    if-eqz v4, :cond_dd

    .line 98
    iget-object v12, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;

    invoke-virtual {v1, v2}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion;)I

    move-result v4

    if-lez v4, :cond_d4

    const/4 v13, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v13, 0x0

    :goto_d5
    move-object v14, v6

    move-object/from16 v16, v19

    move-object/from16 v17, v18

    invoke-interface/range {v12 .. v17}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;->onInfoAvailable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_dd
    new-instance v12, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " v"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".apk"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    iget-boolean v4, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$popupDialog:Z

    if-eqz v4, :cond_205

    invoke-virtual {v1, v2}, Lcom/genonbeta/android/updatewithgithub/ComparableVersion;->compareTo(Lcom/genonbeta/android/updatewithgithub/ComparableVersion;)I

    move-result v1

    if-lez v1, :cond_205

    .line 103
    sget-object v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New version found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f5

    .line 106
    sget-object v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    const-string v2, "Reading assets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1ed

    .line 111
    sget-object v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assets is cached: (total) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "browser_download_url"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v13, v6

    invoke-direct/range {v1 .. v6}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;-><init>(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$2;

    invoke-direct {v1, v7}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$2;-><init>(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;)V

    .line 146
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v3}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_update_available:I

    .line 147
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 149
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 150
    sget-object v3, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget v3, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_update_exists:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_download:I

    .line 153
    invoke-virtual {v3, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_open:I

    .line 154
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1e3

    .line 156
    :cond_1b6
    sget-object v1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    const-string v3, "Update is downloadable"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v1}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_update_body:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v10

    aput-object v13, v3, v8

    const/4 v4, 0x2

    aput-object v18, v3, v4

    const/4 v4, 0x3

    aput-object v19, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_download_now:I

    .line 159
    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 162
    :goto_1e3
    sget v0, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_later:I

    invoke-virtual {v2, v0, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_239

    .line 165
    :cond_1ed
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    const-string v1, "No downloadable file is provided"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_239

    .line 167
    :cond_1f5
    iget-object v0, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_no_update_available:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_239

    .line 168
    :cond_205
    iget-boolean v0, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$popupDialog:Z

    if-eqz v0, :cond_239

    .line 169
    iget-object v0, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_currently_latest_version_info:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_218} :catch_21b
    .catchall {:try_start_b .. :try_end_218} :catchall_219

    goto :goto_239

    :catchall_219
    move-exception v0

    goto :goto_23d

    :catch_21b
    move-exception v0

    .line 176
    :try_start_21c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    sget-object v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->TAG:Ljava/lang/String;

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v0, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->val$popupDialog:Z

    if-eqz v0, :cond_239

    .line 180
    iget-object v0, v7, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_version_check_error:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_239
    .catchall {:try_start_21c .. :try_end_239} :catchall_219

    .line 182
    :cond_239
    :goto_239
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :goto_23d
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_242

    :goto_241
    throw v0

    :goto_242
    goto :goto_241
.end method
