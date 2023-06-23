.class final Lcom/genonbeta/TrebleShot/util/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;
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

    .line 222
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/AppUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitComplete()V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/AppUtils$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.genonbeta.intent.action.REQUEST_PREFERENCES_SYNC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
