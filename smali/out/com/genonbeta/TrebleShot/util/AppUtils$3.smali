.class final Lcom/genonbeta/TrebleShot/util/AppUtils$3;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/AppUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceUpdate(Lcom/genonbeta/android/framework/preference/SuperPreferences;Z)V
    .registers 3

    .line 254
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/util/AppUtils$3;->val$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getWeakManager()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/genonbeta/TrebleShot/util/PreferenceUtils;->syncPreferences(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)I

    return-void
.end method
