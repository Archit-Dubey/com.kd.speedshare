.class Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;
.super Ljava/lang/Object;
.source "NetworkManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 107
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->canReadWifiInfo()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 108
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getUIConnectionUtils()Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->access$100(Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;)Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->validateLocationPermission(Landroid/app/Activity;ILcom/genonbeta/TrebleShot/ui/UIConnectionUtils$RequestWatcher;)Z

    goto :goto_2b

    .line 110
    :cond_1f
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment$2;->this$0:Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/fragment/NetworkManagerFragment;->startActivity(Landroid/content/Intent;)V

    :goto_2b
    return-void
.end method
