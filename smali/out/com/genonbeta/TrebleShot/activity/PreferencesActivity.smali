.class public Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;
.super Lcom/genonbeta/TrebleShot/app/Activity;
.source "PreferencesActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 25
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 26
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->setContentView(I)V

    .line 28
    new-instance p1, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$1;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$1;-><init>(Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 35
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_d

    .line 44
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->onBackPressed()V

    goto :goto_3c

    :cond_d
    const v1, 0x7f090065

    if-ne v0, v1, :cond_3e

    .line 46
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11013c

    .line 47
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11020b

    .line 48
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110027

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11005c

    new-instance v1, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;-><init>(Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;)V

    .line 50
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_3c
    const/4 p1, 0x1

    return p1

    .line 70
    :cond_3e
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 3

    .line 85
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->onPause()V

    .line 86
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    .line 87
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getWeakManager()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I

    return-void
.end method
