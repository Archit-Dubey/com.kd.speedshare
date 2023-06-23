.class Lcom/genonbeta/android/framework/widget/PowerfulActionMode$1;
.super Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;
.source "PowerfulActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar<",
        "Landroidx/appcompat/widget/Toolbar;",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;)V
    .registers 4

    .line 44
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$1;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-direct {p0, p2, p3}, Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$1;->onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onReturningObject()Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$1;->this$0:Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    return-object v0
.end method
