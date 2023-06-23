.class Lcom/genonbeta/TrebleShot/App$1;
.super Landroid/content/BroadcastReceiver;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/App;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/App;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/App$1;->this$0:Lcom/genonbeta/TrebleShot/App;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_1f

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.genonbeta.intent.action.REQUEST_PREFERENCES_SYNC"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 38
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getWeakManager()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 40
    instance-of p2, p1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    if-eqz p2, :cond_1f

    .line 41
    check-cast p1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->sync()V

    :cond_1f
    return-void
.end method
