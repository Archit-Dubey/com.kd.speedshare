.class Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;
.super Ljava/lang/Object;
.source "PowerfulActionToolbar.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->onReload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

.field final synthetic val$callback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->val$callback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->val$callback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    instance-of v1, v0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    .line 138
    invoke-virtual {v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    invoke-virtual {v2}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_32

    .line 140
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    invoke-static {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->access$100(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 141
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    invoke-static {v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->access$000(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$2;->val$callback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    :cond_32
    return p1
.end method
