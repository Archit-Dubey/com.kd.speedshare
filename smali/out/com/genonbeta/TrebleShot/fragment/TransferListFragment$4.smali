.class Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;
.super Ljava/lang/Object;
.source "TransferListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$statusItem:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;->val$statusItem:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 253
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment$4;->val$statusItem:Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/adapter/TransferListAdapter$StorageStatusItem;->directory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/fragment/TransferListFragment;->changeSavePath(Ljava/lang/String;)V

    return-void
.end method
