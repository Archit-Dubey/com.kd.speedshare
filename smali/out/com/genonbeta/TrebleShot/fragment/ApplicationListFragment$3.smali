.class Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;
.super Ljava/lang/Object;
.source "ApplicationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->performLayoutClickOpen(Lcom/genonbeta/TrebleShot/widget/EditableListAdapter$EditableViewHolder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

.field final synthetic val$launchIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;Landroid/content/Intent;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;->val$launchIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 154
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;->this$0:Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;

    iget-object p2, p0, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment$3;->val$launchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/fragment/ApplicationListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
