.class Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConnectionTestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$1;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)Ljava/util/List;

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
    .registers 11

    const/4 v0, 0x0

    if-nez p2, :cond_14

    .line 74
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007b

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    :cond_14
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;

    const p3, 0x7f09018e

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f09018f

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090190

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    iget v3, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    const/4 v4, 0x1

    if-ltz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    .line 84
    :goto_3d
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    if-eqz v3, :cond_46

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)I

    move-result v5

    goto :goto_4a

    :cond_46
    invoke-static {v5}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->access$300(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)I

    move-result v5

    :goto_4a
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-static {v5, v6}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p3, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object p3, p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_80

    .line 89
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;

    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f11022f

    new-array v3, v4, [Ljava/lang/Object;

    iget p1, p1, Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;->pingTime:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {p3, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_86

    :cond_80
    const p1, 0x7f110191

    .line 91
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_86
    return-object p2
.end method
