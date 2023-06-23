.class Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$2;
.super Ljava/lang/Object;
.source "ConnectionManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 427
    new-instance p1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$2;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;-><init>(Landroid/app/Activity;)V

    .line 428
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->startShowing()V

    return-void
.end method
