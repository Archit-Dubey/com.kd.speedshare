.class public Lcom/genonbeta/TrebleShot/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field public static final ACTION_REQUEST_PREFERENCES_SYNC:Ljava/lang/String; = "com.genonbeta.intent.action.REQUEST_PREFERENCES_SYNC"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/genonbeta/TrebleShot/App;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/App;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    new-instance v0, Lcom/genonbeta/TrebleShot/App$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/App$1;-><init>(Lcom/genonbeta/TrebleShot/App;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/App;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initializeSettings()V
    .registers 9

    .line 71
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v1

    const-string v2, "nsd_enabled"

    .line 73
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "referral_version"

    .line 74
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    const v6, 0x7f140001

    const/4 v7, 0x0

    .line 76
    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    if-nez v5, :cond_2e

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget v6, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    .line 80
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 81
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2e
    if-nez v3, :cond_42

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_3b

    const/4 v7, 0x1

    .line 87
    :cond_3b
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    :cond_42
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncDefaults(Landroid/content/Context;)V

    const-string v2, "migrated_version"

    .line 92
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 93
    iget v3, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 95
    iget v4, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    if-ge v3, v4, :cond_93

    const/16 v4, 0x43

    if-gt v3, v4, :cond_72

    .line 99
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getViewingPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 100
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 101
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    .line 104
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "previously_migrated_version"

    .line 105
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_93

    .line 109
    :cond_86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    .line 110
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_93
    :goto_93
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/App;->initializeSettings()V

    .line 52
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/App;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.genonbeta.intent.action.REQUEST_PREFERENCES_SYNC"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    sget-object v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->googlePlay:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getBuildFlavor()Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 55
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->hasNewVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->getLastTimeCheckedForUpdates(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5460

    cmp-long v4, v0, v2

    if-ltz v4, :cond_50

    .line 57
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->getDefaultUpdater(Landroid/content/Context;)Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/genonbeta/TrebleShot/util/UpdateUtils;->checkForUpdates(Landroid/content/Context;Lcom/genonbeta/android/updatewithgithub/GitHubUpdater;ZLcom/genonbeta/android/updatewithgithub/GitHubUpdater$OnInfoAvailableListener;)V

    :cond_50
    return-void
.end method

.method public onTerminate()V
    .registers 3

    .line 65
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 66
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/App;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
