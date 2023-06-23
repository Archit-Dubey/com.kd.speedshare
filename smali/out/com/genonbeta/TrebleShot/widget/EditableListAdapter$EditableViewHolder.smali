.class public Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
.super Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
.source "EditableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/widget/EditableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditableViewHolder"
.end annotation


# instance fields
.field private mClickableView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 305
    invoke-direct {p0, p1}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getClickableView()Landroid/view/View;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->mClickableView:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public setClickableView(I)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->setClickableView(Landroid/view/View;)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setClickableView(Landroid/view/View;)Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;->mClickableView:Landroid/view/View;

    return-object p0
.end method
