.class Lcom/genonbeta/TrebleShot/fragment/FileListFragment$6;
.super Ljava/lang/Object;
.source "FileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->performLayoutClick(Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupViewHolder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/FileListFragment;)V
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 530
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/FileListFragment$6;->this$0:Lcom/genonbeta/TrebleShot/fragment/FileListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/fragment/FileListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "helpFolderSelection"

    const/4 v1, 0x1

    .line 532
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 533
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
