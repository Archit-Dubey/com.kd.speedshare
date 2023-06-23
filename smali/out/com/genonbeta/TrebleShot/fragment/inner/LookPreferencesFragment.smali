.class public Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "LookPreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const/high16 p1, 0x7f140000

    .line 19
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 35
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    .line 37
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 25
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 27
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string p1, "custom_fonts"

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "dark_theme"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "amoled_theme"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 46
    :cond_18
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 47
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getWeakManager()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 47
    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/inner/LookPreferencesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    :cond_3c
    return-void
.end method
