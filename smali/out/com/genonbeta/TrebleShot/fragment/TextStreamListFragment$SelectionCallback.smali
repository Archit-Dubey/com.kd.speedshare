.class Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;
.source "TextStreamListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback<",
        "Lcom/genonbeta/TrebleShot/object/TextStreamObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl<",
            "Lcom/genonbeta/TrebleShot/object/TextStreamObject;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;-><init>(Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .registers 4

    .line 188
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z
    .registers 9

    .line 206
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object v1

    invoke-interface {v1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getSelectionConnection()Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;->getSelectedItemList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f090050

    if-ne v0, v3, :cond_26

    .line 211
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p1

    invoke-interface {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Ljava/util/List;)V

    goto :goto_85

    :cond_26
    const v3, 0x7f09004e

    if-eq v0, v3, :cond_36

    const v4, 0x7f09004f

    if-ne v0, v4, :cond_31

    goto :goto_36

    .line 227
    :cond_31
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 213
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v2, :cond_86

    .line 214
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    .line 216
    new-instance p2, Landroid/content/Intent;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_4e

    const-string v0, "android.intent.action.SEND"

    goto :goto_50

    :cond_4e
    const-string v0, "genonbeta.intent.action.TREBLESHOT_SEND"

    :goto_50
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    const-string v0, "android.intent.extra.TEXT"

    .line 218
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "text/*"

    .line 219
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 221
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;->getAdapter()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object p2

    invoke-interface {p2}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    if-ne p3, v3, :cond_82

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;->getFragment()Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;

    move-result-object p3

    invoke-interface {p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f11019b

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    :cond_82
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_85
    return v2

    :cond_86
    const p2, 0x7f110110

    .line 223
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method public bridge synthetic onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .registers 4

    .line 188
    check-cast p2, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/fragment/TextStreamListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/app/EditableListFragment$SelectionCallback;->onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Landroid/view/Menu;)Z

    .line 199
    invoke-virtual {p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const p2, 0x7f0d0005

    invoke-virtual {p1, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
