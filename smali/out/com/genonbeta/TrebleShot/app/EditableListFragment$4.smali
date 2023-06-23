.class Lcom/genonbeta/TrebleShot/app/EditableListFragment$4;
.super Landroid/database/ContentObserver;
.source "EditableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/app/EditableListFragment;->getDefaultContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/app/EditableListFragment;Landroid/os/Handler;)V
    .registers 3

    .line 493
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 2

    .line 503
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/app/EditableListFragment$4;->this$0:Lcom/genonbeta/TrebleShot/app/EditableListFragment;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/app/EditableListFragment;->refreshList()V

    return-void
.end method
