.class Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$1;
.super Ljava/lang/Object;
.source "SelectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 83
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/inner/SelectionListFragment;->refreshList()V

    return-void
.end method
