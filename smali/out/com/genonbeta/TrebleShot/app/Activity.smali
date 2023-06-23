.class public abstract Lcom/genonbeta/TrebleShot/app/Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/app/Activity$OnPreloadArgumentWatcher;,
        Lcom/genonbeta/TrebleShot/app/Activity$OnBackPressedListener;
    }
.end annotation


# static fields
.field public static final REQUEST_PICK_PROFILE_PHOTO:I = 0x3e8


# instance fields
.field private mAmoledDarkThemeRequested:Z

.field private final mAttachedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomFontsEnabled:Z

.field private mDarkThemeRequested:Z

.field private mExitAppRequested:Z

.field private mOngoingRequest:Landroidx/appcompat/app/AlertDialog;

.field private mSkipPermissionRequest:Z

.field private mThemeLoadingFailed:Z

.field private mWelcomePageDisallowed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mDarkThemeRequested:Z

    .line 54
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAmoledDarkThemeRequested:Z

    .line 55
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mThemeLoadingFailed:Z

    .line 56
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mCustomFontsEnabled:Z

    .line 57
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mSkipPermissionRequest:Z

    .line 58
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mWelcomePageDisallowed:Z

    .line 59
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mExitAppRequested:Z

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/app/Activity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public attachRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public checkForTasks()Z
    .registers 4

    .line 302
    new-instance v0, Lcom/genonbeta/TrebleShot/app/Activity$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/app/Activity$2;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;)V

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/genonbeta/TrebleShot/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public exitApp()V
    .registers 3

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mExitAppRequested:Z

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 346
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->finish()V

    return-void
.end method

.method public getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;
    .registers 2

    .line 351
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 356
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    return-object v0
.end method

.method public hasIntroductionShown()Z
    .registers 4

    .line 361
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "introduction_shown"

    const/4 v2, 0x0

    .line 362
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAmoledDarkThemeRequested()Z
    .registers 4

    .line 367
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "amoled_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDarkThemeRequested()Z
    .registers 4

    .line 372
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dark_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUsingCustomFonts()Z
    .registers 4

    .line 377
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "custom_fonts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public loadProfilePictureInto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    :try_start_0
    const-string v0, "profilePicture"

    .line 384
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->circleCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    .line 390
    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_29

    :catch_1a
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 393
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_29
    return-void
.end method

.method public notifyUserProfileChanged()V
    .registers 2

    .line 399
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 400
    new-instance v0, Lcom/genonbeta/TrebleShot/app/Activity$3;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/app/Activity$3;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2c

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2c

    if-eqz p3, :cond_2c

    .line 194
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 197
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object p2

    .line 198
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->centerCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    const/16 p2, 0xc8

    .line 200
    invoke-virtual {p1, p2, p2}, Lcom/genonbeta/TrebleShot/GlideRequest;->override(II)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    new-instance p2, Lcom/genonbeta/TrebleShot/app/Activity$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/app/Activity$1;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;)V

    .line 201
    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_2c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 64
    const-class v0, Lcom/genonbeta/TrebleShot/app/Activity;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isDarkThemeRequested()Z

    move-result v1

    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mDarkThemeRequested:Z

    .line 65
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isAmoledDarkThemeRequested()Z

    move-result v1

    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAmoledDarkThemeRequested:Z

    .line 66
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isUsingCustomFonts()Z

    move-result v1

    iput-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mCustomFontsEnabled:Z

    .line 68
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mDarkThemeRequested:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_97

    .line 71
    :try_start_19
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity theme id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_48

    .line 76
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 78
    :cond_48
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After change theme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_b2

    goto :goto_70

    :sswitch_64
    const v1, 0x7f1201e6

    goto :goto_7a

    :sswitch_68
    const v1, 0x7f1201e5

    goto :goto_7a

    :sswitch_6c
    const v1, 0x7f1201e2

    goto :goto_7a

    .line 94
    :goto_70
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "There is an unknown theme applied. Resources could fail. Dark theme won\'t be effective"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_7a
    if-nez v1, :cond_7d

    const/4 v4, 0x1

    .line 99
    :cond_7d
    iput-boolean v4, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mThemeLoadingFailed:Z

    if-nez v4, :cond_97

    .line 102
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->setTheme(I)V

    .line 104
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAmoledDarkThemeRequested:Z

    if-eqz v1, :cond_97

    .line 105
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x7f1200da

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception v1

    .line 108
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 113
    :cond_97
    :goto_97
    iget-boolean v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mCustomFontsEnabled:Z

    if-eqz v1, :cond_ae

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Custom fonts have been applied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f12019c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 118
    :cond_ae
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :sswitch_data_b2
    .sparse-switch
        0x7f1201de -> :sswitch_6c
        0x7f1201e7 -> :sswitch_68
        0x7f1201e8 -> :sswitch_64
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .line 149
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 151
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mExitAppRequested:Z

    if-nez v0, :cond_1e

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.SERVICE_STATUS"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "extraStatusStarted"

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1e
    return-void
.end method

.method protected onPreviousRunningTask(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 181
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->checkRunningConditions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 182
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1b

    .line 184
    :cond_14
    iget-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mSkipPermissionRequest:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->requestRequiredPermissions(Z)Z

    :goto_1b
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 124
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 126
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mDarkThemeRequested:Z

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isDarkThemeRequested()Z

    move-result v1

    if-ne v0, v1, :cond_19

    .line 127
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isDarkThemeRequested()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAmoledDarkThemeRequested:Z

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isAmoledDarkThemeRequested()Z

    move-result v1

    if-eq v0, v1, :cond_1d

    :cond_19
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mThemeLoadingFailed:Z

    if-eqz v0, :cond_25

    :cond_1d
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mCustomFontsEnabled:Z

    .line 129
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isUsingCustomFonts()Z

    move-result v1

    if-eq v0, v1, :cond_28

    .line 130
    :cond_25
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->recreate()V

    .line 132
    :cond_28
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->hasIntroductionShown()Z

    move-result v0

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mWelcomePageDisallowed:Z

    if-nez v0, :cond_40

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->finish()V

    goto :goto_65

    .line 135
    :cond_40
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->checkRunningConditions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 136
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mSkipPermissionRequest:Z

    if-nez v0, :cond_65

    .line 137
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->requestRequiredPermissions(Z)Z

    goto :goto_65

    .line 139
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.genonbeta.TrebleShot.transaction.action.SERVICE_STATUS"

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extraStatusStarted"

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_65
    :goto_65
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mExitAppRequested:Z

    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 160
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 162
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    monitor-enter v0

    .line 163
    :try_start_6
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    .line 164
    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->detachAnchor()V

    goto :goto_c

    .line 167
    :cond_1c
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mAttachedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 168
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw v1

    :goto_27
    goto :goto_26
.end method

.method public onUserProfileUpdated()V
    .registers 1

    return-void
.end method

.method public requestProfilePictureChange()V
    .registers 3

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public requestRequiredPermissions(Z)Z
    .registers 5

    .line 422
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mOngoingRequest:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 425
    :cond_c
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getRequiredPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    .line 426
    invoke-static {p0, v2, p1}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest;->requestIfNecessary(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mOngoingRequest:Landroidx/appcompat/app/AlertDialog;

    if-eqz v2, :cond_14

    return v1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public setSkipPermissionRequest(Z)V
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mSkipPermissionRequest:Z

    return-void
.end method

.method public setWelcomePageDisallowed(Z)V
    .registers 2

    .line 434
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/app/Activity;->mWelcomePageDisallowed:Z

    return-void
.end method

.method public startProfileEditor()V
    .registers 2

    .line 439
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;)V

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ProfileEditorDialog;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
