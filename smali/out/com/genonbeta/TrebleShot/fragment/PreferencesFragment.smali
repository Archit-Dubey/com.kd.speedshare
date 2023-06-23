.class public Lcom/genonbeta/TrebleShot/fragment/PreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f140003

    .line 15
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/PreferencesFragment;->addPreferencesFromResource(I)V

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_13

    const p1, 0x7f140004

    .line 18
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/PreferencesFragment;->addPreferencesFromResource(I)V

    goto :goto_19

    :cond_13
    const p1, 0x7f140005

    .line 20
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/PreferencesFragment;->addPreferencesFromResource(I)V

    :goto_19
    const p1, 0x7f140002

    .line 22
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/PreferencesFragment;->addPreferencesFromResource(I)V

    return-void
.end method
