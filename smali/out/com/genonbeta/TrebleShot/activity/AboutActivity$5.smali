.class Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/AboutActivity;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 75
    sget-object p1, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->googlePlay:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getBuildFlavor()Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 77
    :try_start_c
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    const-string v2, "com.genonbeta.TrebleShot.activity.DonationActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    goto :goto_2f

    :catch_1f
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2f

    .line 82
    :cond_24
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/AboutActivity$5;->this$0:Lcom/genonbeta/TrebleShot/activity/AboutActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->getDefaultUpdater(Landroid/content/Context;)Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->checkForUpdates(Landroid/content/Context;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V

    :goto_2f
    return-void
.end method
