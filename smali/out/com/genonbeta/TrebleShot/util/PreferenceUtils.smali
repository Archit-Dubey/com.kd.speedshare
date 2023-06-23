.class public Lcom/genonbeta/TrebleShot/util/PreferenceUtils;
.super Lcom/genonbeta/android/framework/util/PreferenceUtils;
.source "PreferenceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/genonbeta/android/framework/util/PreferenceUtils;-><init>()V

    return-void
.end method

.method public static syncDefaults(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncDefaults(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static syncDefaults(Landroid/content/Context;ZZ)V
    .registers 4

    .line 19
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p0

    if-eqz p1, :cond_17

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p0, p1, p2

    .line 23
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->sync([Landroid/content/SharedPreferences;)I

    goto :goto_20

    :cond_17
    if-eqz p2, :cond_1d

    .line 26
    invoke-static {v0, p0}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I

    goto :goto_20

    .line 28
    :cond_1d
    invoke-static {p0, v0}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I

    :goto_20
    return-void
.end method
