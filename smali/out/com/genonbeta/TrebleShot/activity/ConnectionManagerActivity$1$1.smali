.class Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$1;
.super Ljava/lang/Object;
.source "ConnectionManagerActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/ui/UITask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateTaskStarted(Lcom/genonbeta/android/framework/util/Interrupter;)V
    .registers 3

    .line 89
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public updateTaskStopped()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$1;->this$1:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->access$100(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
