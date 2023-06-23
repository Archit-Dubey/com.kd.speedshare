.class final Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;
.super Ljava/lang/Object;
.source "UpdateUtils.java"

# interfaces
.implements Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/UpdateUtils;->checkForUpdates(Landroid/content/Context;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;->val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoAvailable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 35
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "availableVersion"

    .line 38
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "checkedForUpdatesTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/UpdateUtils$1;->val$listener:Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;

    if-eqz v1, :cond_29

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 43
    invoke-interface/range {v1 .. v6}, Lcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;->onInfoAvailable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
