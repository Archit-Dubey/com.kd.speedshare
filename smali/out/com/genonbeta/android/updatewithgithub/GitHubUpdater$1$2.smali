.class Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$2;
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


# direct methods
.method constructor <init>(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$2;->this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 142
    iget-object p1, p0, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1$2;->this$1:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;

    iget-object p1, p1, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$1;->this$0:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    invoke-static {p1}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;->access$100(Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
