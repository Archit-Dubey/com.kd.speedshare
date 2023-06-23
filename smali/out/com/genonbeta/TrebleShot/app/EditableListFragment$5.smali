.class Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;
.super Ljava/lang/Object;
.source "EditableListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment;->registerLayoutViewClicks(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

.field final synthetic val$holder:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)V
    .registers 3

    .line 670
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;->val$holder:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 674
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$5;->val$holder:Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z

    return-void
.end method
