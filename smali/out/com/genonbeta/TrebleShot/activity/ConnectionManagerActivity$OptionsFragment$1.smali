.class Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;
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

    .line 393
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_2e

    :pswitch_7
    goto :goto_2d

    .line 411
    :pswitch_8
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->access$300(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;)V

    goto :goto_2d

    .line 405
    :pswitch_e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseExistingNetwork:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    goto :goto_2d

    .line 408
    :pswitch_16
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->EnterIpAddress:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    goto :goto_2d

    .line 402
    :pswitch_1e
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->CreateHotspot:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    goto :goto_2d

    .line 399
    :pswitch_26
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;

    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseKnownDevice:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V

    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x7f0900ba
        :pswitch_26
        :pswitch_7
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
