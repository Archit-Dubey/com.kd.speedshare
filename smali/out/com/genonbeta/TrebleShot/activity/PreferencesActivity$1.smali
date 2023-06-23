.class Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 28
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/PreferencesActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .registers 2

    return-void
.end method
