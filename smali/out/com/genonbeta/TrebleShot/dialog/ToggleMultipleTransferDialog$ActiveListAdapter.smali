.class Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToggleMultipleTransferDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;)V
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;

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
    .registers 7

    if-nez p2, :cond_10

    .line 124
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$300(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0089

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 127
    :cond_10
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    const p3, 0x7f09010f

    .line 128
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0901e9

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09002b

    .line 130
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    iget-object v2, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const v0, 0x7f0700e8

    goto :goto_4d

    :cond_4a
    const v0, 0x7f0700a1

    :goto_4d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->access$400(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->showPictureIntoView(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;)V

    return-object p2
.end method
