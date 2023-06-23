.class public Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "SelectionEditorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        ">",
        "Landroidx/appcompat/app/AlertDialog$Builder;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog<",
            "TT;>.SelfAdapter;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mList:Ljava/util/List;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0068

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090156

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mListView:Landroid/widget/ListView;

    .line 40
    new-instance p2, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;

    invoke-direct {p2, p0, v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$1;)V

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mAdapter:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;

    .line 42
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 45
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3c

    .line 46
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_42

    :cond_3c
    const p1, 0x7f1101c5

    .line 48
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_42
    const p1, 0x7f1101f2

    .line 50
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f11002f

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110091

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110033

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)Ljava/util/List;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)Landroid/view/LayoutInflater;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method public checkReversed(Landroid/view/View;Lcom/genonbeta/android/framework/object/Selectable;)V
    .registers 4

    .line 59
    invoke-interface {p2}, Lcom/genonbeta/android/framework/object/Selectable;->isSelectableSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Lcom/genonbeta/android/framework/object/Selectable;->setSelectableSelected(Z)Z

    .line 60
    invoke-interface {p2}, Lcom/genonbeta/android/framework/object/Selectable;->isSelectableSelected()Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 p2, 0x8

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public massCheck(Z)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/android/framework/object/Selectable;

    .line 66
    invoke-interface {v1, p1}, Lcom/genonbeta/android/framework/object/Selectable;->setSelectableSelected(Z)Z

    goto :goto_6

    .line 68
    :cond_16
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->mAdapter:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 4

    .line 74
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x3

    .line 76
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$1;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x2

    .line 85
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$2;

    invoke-direct {v2, p0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
