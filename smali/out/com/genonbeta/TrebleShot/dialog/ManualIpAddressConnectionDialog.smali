.class public Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;
.super Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;
.source "ManualIpAddressConnectionDialog.java"


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

.field private mSelfListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;)V
    .registers 5

    .line 40
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->mSelfListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    .line 42
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    const p3, 0x7f110045

    .line 44
    invoke-virtual {p0, p3}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    new-instance p3, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;)V

    const p1, 0x7f110034

    invoke-virtual {p0, p1, p3}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->setOnProceedClickListener(ILcom/genonbeta/TrebleShot/dialog/AbstractFailureAwareDialog$OnProceedClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Landroidx/appcompat/app/AlertDialog;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;)Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->mListener:Lcom/genonbeta/TrebleShot/ui/callback/NetworkDeviceSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->doTask(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;)V

    return-void
.end method

.method private doTask(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;)V
    .registers 10

    .line 60
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})"

    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 63
    iget-object v6, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->mSelfListener:Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/genonbeta/TrebleShot/ui/UIConnectionUtils;->makeAcquaintance(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/ui/UITask;Ljava/lang/Object;ILcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    goto :goto_30

    .line 65
    :cond_1e
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1100d2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_30
    return-void
.end method


# virtual methods
.method public show()Landroidx/appcompat/app/AlertDialog;
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/genonbeta/TrebleShot/dialog/AbstractSingleTextInputDialog;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ManualIpAddressConnectionDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method
