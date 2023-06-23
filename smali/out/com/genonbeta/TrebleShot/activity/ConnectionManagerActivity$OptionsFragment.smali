.class public Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;
.super Lcom/genonbeta/android/framework/app/Fragment;
.source "ConnectionManagerActivity.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$DeviceSelectionSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsFragment"
.end annotation


# static fields
.field public static final REQUEST_CHOOSE_DEVICE:I = 0x64


# instance fields
.field private mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Lcom/genonbeta/android/framework/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;)V
    .registers 1

    .line 378
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->startCodeScanner()V

    return-void
.end method

.method private startCodeScanner()V
    .registers 4

    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/activity/BarcodeScannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/framework/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_43

    const/4 p1, -0x1

    if-ne p2, p1, :cond_43

    if-eqz p3, :cond_43

    .line 443
    :try_start_c
    new-instance p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    const-string p2, "extraDeviceId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 445
    new-instance p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object v0, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v1, "extraConnectionAdapter"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 448
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    if-eqz p3, :cond_43

    .line 449
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    invoke-interface {p3, p1, p2}, Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;->onNetworkDeviceSelected(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c005a

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 392
    new-instance p2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;

    invoke-direct {p2, p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$1;-><init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;)V

    const p3, 0x7f0900ba

    .line 416
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900bc

    .line 417
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900be

    .line 418
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900bf

    .line 419
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900bd

    .line 420
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900bb

    .line 422
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$2;

    invoke-direct {p3, p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment$2;-><init>(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDeviceSelectedListener(Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-void
.end method

.method public updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V
    .registers 5

    .line 464
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 465
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$OptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.genonbeta.intent.action.CONNECTION_MANAGER_CHANGE_FRAGMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "extraFragmentEnum"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 465
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1e
    return-void
.end method
