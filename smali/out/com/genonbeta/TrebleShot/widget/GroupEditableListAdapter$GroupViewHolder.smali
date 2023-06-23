.class public Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
.super Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
.source "GroupEditableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupViewHolder"
.end annotation


# instance fields
.field private mRepresentativeText:Landroid/widget/TextView;

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 254
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 3

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 3

    .line 243
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->mRepresentativeText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getRepresentativeText()Landroid/widget/TextView;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->mRepresentativeText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 264
    iget v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->mRequestCode:I

    return v0
.end method

.method public isRepresentative()Z
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->mRepresentativeText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setRequestCode(I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;
    .registers 2

    .line 269
    iput p1, p0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->mRequestCode:I

    return-object p0
.end method

.method public tryBinding(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;)Z
    .registers 4

    .line 280
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getRepresentativeText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getRepresentativeText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_21

    .line 283
    :cond_d
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->getRepresentativeText()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getRepresentativeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;->setRequestCode(I)Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;

    const/4 p1, 0x1

    return p1

    :cond_21
    :goto_21
    const/4 p1, 0x0

    return p1
.end method
