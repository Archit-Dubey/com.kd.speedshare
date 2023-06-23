.class public Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "SelectAssigneeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/Activity;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/Activity;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->mList:Ljava/util/List;

    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_29

    .line 44
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;

    invoke-direct {p1, p0, p2}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$ListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog$1;)V

    invoke-virtual {p0, p1, p3}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2f

    :cond_29
    const p1, 0x7f1101c5

    .line 46
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_2f
    const p1, 0x7f110094

    .line 48
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110033

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Landroid/view/LayoutInflater;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectAssigneeDialog;->mIconBuilder:Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    return-object p0
.end method
