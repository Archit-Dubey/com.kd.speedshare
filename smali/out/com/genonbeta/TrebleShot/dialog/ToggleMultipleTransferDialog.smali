.class public Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "ToggleMultipleTransferDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;
    }
.end annotation


# instance fields
.field private mActiveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Ljava/util/List;Ljava/util/List;Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;",
            "Lcom/genonbeta/TrebleShot/object/TransferGroup;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mActiveList:Ljava/util/List;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    .line 45
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mActiveList:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    new-instance p3, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$ActiveListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;)V

    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    invoke-virtual {p0, p3, v0}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p3, 0x7f110033

    .line 63
    invoke-virtual {p0, p3, p4}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    iget p3, p5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    if-lez p3, :cond_4a

    const p3, 0x7f11001f

    .line 66
    new-instance p4, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$2;

    invoke-direct {p4, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    invoke-virtual {p0, p3, p4}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    :cond_4a
    iget p3, p5, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    if-lez p3, :cond_59

    const p3, 0x7f110060

    .line 76
    new-instance p4, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;

    invoke-direct {p4, p0, p2, p1}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog$3;-><init>(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;)V

    invoke-virtual {p0, p3, p4}, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_59
    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mActiveList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Landroid/view/LayoutInflater;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ToggleMultipleTransferDialog;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    return-object p0
.end method
