.class Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2$1;
.super Ljava/lang/Object;
.source "ContentSharingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;

.field final synthetic val$fragment:Lcom/genonbeta/TrebleShot/app/EditableListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;Lcom/genonbeta/TrebleShot/app/EditableListFragment;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2$1;->val$fragment:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ContentSharingActivity$2$1;->val$fragment:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getAdapterImpl()Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/widget/EditableListAdapterImpl;->notifyAllSelectionChanges()V

    return-void
.end method
