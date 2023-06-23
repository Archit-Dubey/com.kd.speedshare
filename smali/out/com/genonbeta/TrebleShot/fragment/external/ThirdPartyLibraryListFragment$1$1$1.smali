.class Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;
.super Ljava/lang/Object;
.source "ThirdPartyLibraryListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;

.field final synthetic val$moduleItem:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;->val$moduleItem:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    const v1, 0x7f090194

    if-ne p1, v1, :cond_2a

    .line 69
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;->val$moduleItem:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->licenceUrl:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4d

    :cond_2a
    const v1, 0x7f090196

    if-ne p1, v1, :cond_4f

    .line 72
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;->this$2:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1;->this$1:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1;->this$0:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$1$1$1;->val$moduleItem:Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/fragment/external/ThirdPartyLibraryListFragment$ModuleItem;->moduleUrl:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_4d
    const/4 p1, 0x1

    return p1

    :cond_4f
    const/4 p1, 0x0

    return p1
.end method
