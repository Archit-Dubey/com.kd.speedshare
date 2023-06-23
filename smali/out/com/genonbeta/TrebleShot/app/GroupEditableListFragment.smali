.class public abstract Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;
.super Lcom/genonbeta/TrebleShot/app/EditableListFragment;
.source "GroupEditableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupEditable;",
        "V:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;",
        "E:",
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter<",
        "TT;TV;>;>",
        "Lcom/genonbeta/TrebleShot/app/EditableListFragment<",
        "TT;TV;TE;>;"
    }
.end annotation


# instance fields
.field private mDefaultGroupingCriteria:I

.field private mGroupingOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;-><init>()V

    .line 27
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mGroupingOptions:Ljava/util/Map;

    const/16 v0, 0x64

    .line 28
    iput v0, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mDefaultGroupingCriteria:I

    return-void
.end method


# virtual methods
.method public changeGroupingCriteria(I)V
    .registers 4

    .line 91
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GroupBy"

    .line 92
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->setGroupBy(I)V

    .line 97
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->refreshList()V

    return-void
.end method

.method public getGroupingCriteria()I
    .registers 4

    .line 102
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getViewPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GroupBy"

    .line 103
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getUniqueSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mDefaultGroupingCriteria:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    .line 49
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 51
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->onGroupingOptions(Ljava/util/Map;)V

    .line 55
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mGroupingOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mGroupingOptions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mGroupingOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_34

    const v0, 0x7f0d0009

    .line 59
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f09005e

    .line 60
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_34

    const p2, 0x7f09005d

    .line 63
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mGroupingOptions:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->applyDynamicMenuItems(Landroid/view/MenuItem;ILjava/util/Map;)V

    :cond_34
    return-void
.end method

.method public onGridSpanSize(II)I
    .registers 4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_d

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_9

    goto :goto_d

    .line 43
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onGridSpanSize(II)I

    move-result p2

    :cond_d
    :goto_d
    return p2
.end method

.method public onGroupingOptions(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f09005d

    if-ne v0, v1, :cond_12

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->changeGroupingCriteria(I)V

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_12
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4

    .line 70
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f09005e

    .line 71
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getGroupingCriteria()I

    move-result v0

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mGroupingOptions:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->checkPreferredDynamicItem(Landroid/view/MenuItem;ILjava/util/Map;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 33
    invoke-super {p0, p1, p2}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getAdapter()Lcom/genonbeta/android/framework/widget/ListAdapterImpl;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->getGroupingCriteria()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter;->setGroupBy(I)V

    return-void
.end method

.method public setDefaultGroupingCriteria(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/genonbeta/TrebleShot/app/GroupEditableListFragment;->mDefaultGroupingCriteria:I

    return-void
.end method
