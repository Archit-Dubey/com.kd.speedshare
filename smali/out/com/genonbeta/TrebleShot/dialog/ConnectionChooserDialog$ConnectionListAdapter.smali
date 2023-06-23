.class Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConnectionChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)V
    .registers 9

    .line 96
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "deviceConnection"

    invoke-direct {v2, v5, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$000(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v6

    iget-object v6, v6, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    aput-object v6, v5, v3

    const-string v3, "deviceId=?"

    invoke-virtual {v2, v3, v5}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    const-string v3, "lastCheckedDate DESC"

    .line 99
    invoke-virtual {v2, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/genonbeta/TrebleShot/config/AppConfig;->DEFAULT_DISABLED_INTERFACES:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getInterfaces(Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_14

    .line 126
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007b

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 128
    :cond_14
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    const p3, 0x7f09018e

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f09018f

    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090190

    .line 132
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    .line 137
    iget-object v5, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v0, 0x1

    :cond_5c
    if-eqz v0, :cond_65

    .line 142
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$300(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)I

    move-result v0

    goto :goto_6b

    :cond_65
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->access$400(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)I

    move-result v0

    :goto_6b
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p3, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->lastCheckedDate:J

    invoke-static {p3, v0, v1}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->getTimeAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
