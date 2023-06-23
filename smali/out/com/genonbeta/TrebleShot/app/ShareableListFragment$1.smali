.class Lcom/genonbeta/TrebleShot/app/ShareableListFragment$1;
.super Ljava/lang/Object;
.source "ShareableListFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/app/ShareableListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/ShareableListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/ShareableListFragment;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/ShareableListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/ShareableListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->search(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/ShareableListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/app/ShareableListFragment;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/app/ShareableListFragment;->search(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
