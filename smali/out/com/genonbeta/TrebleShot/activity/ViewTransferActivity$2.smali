.class Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;
.super Ljava/lang/Object;
.source "ViewTransferActivity.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/PowerfulActionMode$OnSelectionTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

.field final synthetic val$toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;Landroidx/appcompat/widget/Toolbar;)V
    .registers 3

    .line 261
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;->val$toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSelectionTask(ZLcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)V
    .registers 3

    .line 261
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;->onSelectionTask(ZLcom/genonbeta/android/framework/widget/PowerfulActionMode;)V

    return-void
.end method

.method public onSelectionTask(ZLcom/genonbeta/android/framework/widget/PowerfulActionMode;)V
    .registers 3

    .line 265
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity$2;->val$toolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method
