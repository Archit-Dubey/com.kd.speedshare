.class Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;
.super Ljava/lang/Object;
.source "GitHubUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

.field final synthetic val$applicationName:Ljava/lang/String;

.field final synthetic val$downloadURL:Ljava/lang/String;

.field final synthetic val$lastVersionName:Ljava/lang/String;

.field final synthetic val$updateFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 117
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    iput-object p2, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$updateFile:Ljava/io/File;

    iput-object p3, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$downloadURL:Ljava/lang/String;

    iput-object p4, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$applicationName:Ljava/lang/String;

    iput-object p5, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$lastVersionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 121
    iget-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$updateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 122
    iget-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$updateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 124
    :cond_d
    iget-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    iget-object p1, p1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {p1}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 125
    new-instance p2, Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$downloadURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 127
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    iget-object v0, v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_downloading_update_title:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$applicationName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$lastVersionName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 128
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    iget-object v0, v0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {v0}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/genonbeta/android/framework/R$string;->genfw_uwg_downloading_update_description:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$applicationName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 129
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$applicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$1;->val$lastVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string v0, "application/vnd.android.package-archive"

    .line 130
    invoke-virtual {p2, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 131
    invoke-virtual {p2, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 133
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method
