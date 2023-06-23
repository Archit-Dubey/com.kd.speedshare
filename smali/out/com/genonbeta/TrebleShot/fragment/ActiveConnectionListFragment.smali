.class public Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.source "ActiveConnectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment<",
        "Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;",
        "Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;",
        "Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;-><init>()V

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    .line 39
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$1;-><init>(Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 86
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f0700f9

    .line 88
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->setEmptyImage(I)V

    const p1, 0x7f1101c7

    .line 89
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAdapter()Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;
    .registers 4

    .line 95
    new-instance v0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$2;-><init>(Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;)V

    .line 125
    new-instance v1, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment$3;-><init>(Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)V

    return-object v1
.end method

.method public bridge synthetic onAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->onAdapter()Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 57
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->setSortingSupported(Z)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->setFilteringSupported(Z)V

    .line 61
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.genonbeta.TrebleShot.transaction.action.HOTSPOT_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onDefaultClickAction(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 5

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;

    .line 144
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->getInterface()Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {v2, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->makeWebShareLink(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/WebShareDetailsDialog;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_28
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_0 .. :try_end_28} :catch_2a

    const/4 p1, 0x1

    return p1

    :catch_2a
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 79
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onPause()V

    .line 80
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 72
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
    .registers 4

    .line 156
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 159
    :try_start_6
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;->getItem(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Lcom/genonbeta/TrebleShot/object/Editable;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->getInterface()Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {v1, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->makeWebShareLink(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/fragment/ActiveConnectionListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Lcom/genonbeta/TrebleShot/exception/NotReadyException; {:try_start_6 .. :try_end_34} :catch_35

    goto :goto_37

    :catch_35
    const/4 p1, 0x0

    return p1

    :cond_37
    :goto_37
    const/4 p1, 0x1

    return p1
.end method
