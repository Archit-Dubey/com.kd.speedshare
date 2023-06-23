.class Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectAssigneeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$1;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Ljava/util/List;

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
    .registers 6

    if-nez p2, :cond_10

    .line 76
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c007a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_10
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    const p3, 0x7f09010f

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0901e9

    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-object v1, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->access$300(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->showPictureIntoView(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;)V

    return-object p2
.end method
