.class Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;
.super Ljava/lang/Object;
.source "ShareAppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;->shareAsApk(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;Landroid/content/Context;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->this$0:Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 65
    :try_start_0
    new-instance v0, Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {v0}, Lcom/genonbeta/android/framework/util/Interrupter;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 74
    invoke-static {v2, v1, v5}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getUniqueFileName(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/genonbeta/android/framework/io/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    invoke-static {v4, v3, v2, v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->copy(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/io/DocumentFile;Lcom/genonbeta/android/framework/util/Interrupter;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_ac

    .line 79
    :try_start_63
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extraFileNames"

    .line 80
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    .line 81
    invoke-static {v3, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSecureUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 83
    invoke-virtual {v2}, Lcom/genonbeta/android/framework/io/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    const v3, 0x7f11019b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_9a} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_9a} :catch_ac

    goto :goto_b0

    :catch_9b
    move-exception v0

    .line 87
    :try_start_9c
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ShareAppDialog$3;->val$context:Landroid/content/Context;

    const v2, 0x7f1100fb

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ab} :catch_ac

    goto :goto_b0

    :catch_ac
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b0
    return-void
.end method
