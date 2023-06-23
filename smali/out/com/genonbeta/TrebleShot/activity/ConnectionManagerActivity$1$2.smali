.class Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$2;
.super Ljava/lang/Object;
.source "ConnectionManagerActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;


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

    .line 100
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$2;->this$1:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegistered(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 4

    .line 104
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1$2;->this$1:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$1;->this$0:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const p3, 0x7f1100c4

    invoke-virtual {p1, p3, p2}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
