.class public Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;
.super Ljava/lang/Object;
.source "ConnectionSetUpAssistant.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDialogInstance()Landroidx/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 29
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110174

    .line 30
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isOtherDeviceReady()V
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getDialogInstance()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110130

    .line 136
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110027

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$10;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$10;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110097

    .line 138
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$9;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$9;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110057

    .line 146
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public isThereQRCode()V
    .registers 4

    .line 35
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getDialogInstance()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110131

    .line 36
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110027

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$2;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$2;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110097

    .line 38
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$1;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110057

    .line 47
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public startShowing()V
    .registers 1

    .line 159
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->isOtherDeviceReady()V

    return-void
.end method

.method public updateFragment(Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;)V
    .registers 5

    .line 164
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.genonbeta.intent.action.CONNECTION_MANAGER_CHANGE_FRAGMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "extraFragmentEnum"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public useHotspot()V
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getDialogInstance()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110132

    .line 111
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110027

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$8;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$8;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110097

    .line 113
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$7;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$7;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110057

    .line 122
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public useKnownDevices()V
    .registers 4

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getDialogInstance()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110133

    .line 86
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110027

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$6;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$6;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110097

    .line 88
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$5;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$5;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110069

    .line 97
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public useNetwork()V
    .registers 4

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;->getDialogInstance()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110134

    .line 61
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110027

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$4;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$4;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110097

    .line 63
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$3;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant$3;-><init>(Lcom/genonbeta/TrebleShot/ui/help/ConnectionSetUpAssistant;)V

    const v2, 0x7f110057

    .line 72
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
