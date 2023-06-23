.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$5;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 272
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$5;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "helpFolderSelection"

    const/4 v1, 0x1

    .line 274
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
