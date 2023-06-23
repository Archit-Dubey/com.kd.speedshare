.class public Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "ChangeStoragePathActivity.java"


# static fields
.field public static final REQUEST_CHOOSE_FOLDER:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_37

    const/4 v0, -0x1

    if-ne p2, v0, :cond_37

    const/4 p2, 0x1

    if-eq p1, p2, :cond_c

    goto :goto_37

    :cond_c
    const-string p1, "chosenPath"

    .line 42
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 43
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 44
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 45
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "storage_path"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    const-string p2, "\ud83d\udc4d"

    .line 48
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 55
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 23
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onStart()V

    .line 25
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genonbeta/TrebleShot/activity/FilePickerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.genonbeta.intent.action.CHOOSE_DIRECTORY"

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "startPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f11022a

    .line 30
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/ChangeStoragePathActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
