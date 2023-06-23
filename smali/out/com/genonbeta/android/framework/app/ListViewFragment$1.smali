.class Lcom/genonbeta/android/framework/app/ListViewFragment$1;
.super Ljava/lang/Object;
.source "ListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/app/ListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/app/ListViewFragment;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/genonbeta/android/framework/app/ListViewFragment$1;->this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/genonbeta/android/framework/app/ListViewFragment$1;->this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;

    invoke-static {v0}, Lcom/genonbeta/android/framework/app/ListViewFragment;->access$000(Lcom/genonbeta/android/framework/app/ListViewFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/app/ListViewFragment$1;->this$0:Lcom/genonbeta/android/framework/app/ListViewFragment;

    invoke-static {v1}, Lcom/genonbeta/android/framework/app/ListViewFragment;->access$000(Lcom/genonbeta/android/framework/app/ListViewFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
