.class Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$1;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 100
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$1;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$000(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 106
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$1;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$000(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)V

    return-void
.end method
