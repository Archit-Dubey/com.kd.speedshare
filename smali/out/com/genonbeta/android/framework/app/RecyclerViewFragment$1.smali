.class Lcom/genonbeta/android/framework/app/RecyclerViewFragment$1;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/app/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/app/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/app/RecyclerViewFragment;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment$1;->this$0:Lcom/genonbeta/android/framework/app/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment$1;->this$0:Lcom/genonbeta/android/framework/app/RecyclerViewFragment;

    invoke-static {v0}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->access$000(Lcom/genonbeta/android/framework/app/RecyclerViewFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/app/RecyclerViewFragment$1;->this$0:Lcom/genonbeta/android/framework/app/RecyclerViewFragment;

    invoke-static {v1}, Lcom/genonbeta/android/framework/app/RecyclerViewFragment;->access$000(Lcom/genonbeta/android/framework/app/RecyclerViewFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
