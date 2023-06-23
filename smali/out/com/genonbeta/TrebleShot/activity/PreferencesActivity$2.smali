.class Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 57
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->finish()V

    return-void
.end method
