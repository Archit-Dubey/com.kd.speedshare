.class Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;
.super Ljava/lang/Object;
.source "PowerfulActionToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 118
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    iput-object p2, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;->val$callback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 122
    iget-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;

    invoke-static {p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;->access$000(Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$1;->val$callback:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;

    invoke-virtual {p1, v0}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    return-void
.end method
