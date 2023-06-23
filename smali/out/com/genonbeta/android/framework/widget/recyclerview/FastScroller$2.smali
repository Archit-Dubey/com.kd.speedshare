.class Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->initHandleMovement()V
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

    .line 214
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 218
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->requestDisallowInterceptTouchEvent(Z)V

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    goto :goto_3c

    .line 231
    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_3b

    .line 232
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1, p2}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$302(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;Z)Z

    .line 233
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$600(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 235
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$100(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 236
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$200(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->onHandleReleased()V

    :cond_3a
    return v0

    :cond_3b
    return p2

    .line 220
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$100(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_53

    .line 221
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$200(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;)Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/genonbeta/android/framework/widget/recyclerview/fastscroll/provider/ScrollerViewProvider;->onHandleGrabbed()V

    .line 223
    :cond_53
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1, v0}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$302(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;Z)Z

    .line 225
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p1, p2}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$400(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;Landroid/view/MotionEvent;)F

    move-result p1

    .line 227
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-virtual {p2, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->setScrollerPosition(F)V

    .line 228
    iget-object p2, p0, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller$2;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;

    invoke-static {p2, p1}, Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;->access$500(Lcom/genonbeta/android/framework/widget/recyclerview/FastScroller;F)V

    return v0
.end method
