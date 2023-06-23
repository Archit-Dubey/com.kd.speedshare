.class Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectionEditorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$1;)V
    .registers 3

    .line 97
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->access$100(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)Ljava/util/List;

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

    const/4 v0, 0x0

    if-nez p2, :cond_10

    .line 121
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->this$0:Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;->access$200(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0086

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    :cond_10
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/android/framework/object/Selectable;

    const p3, 0x7f0901e9

    .line 124
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0901a2

    .line 125
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    invoke-interface {p1}, Lcom/genonbeta/android/framework/object/Selectable;->getSelectableTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-interface {p1}, Lcom/genonbeta/android/framework/object/Selectable;->isSelectableSelected()Z

    move-result p3

    if-eqz p3, :cond_35

    const/16 v0, 0x8

    :cond_35
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p3, 0x1

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 131
    new-instance p3, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;

    invoke-direct {p3, p0, v1, p1}, Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/SelectionEditorDialog$SelfAdapter;Landroid/view/View;Lcom/genonbeta/android/framework/object/Selectable;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
