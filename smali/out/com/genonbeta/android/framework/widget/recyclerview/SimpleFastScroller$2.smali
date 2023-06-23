.class Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SimpleFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 97
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    .line 98
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 97
    invoke-virtual {p2, p3, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->updateScrollPosition(II)V

    return-void
.end method
