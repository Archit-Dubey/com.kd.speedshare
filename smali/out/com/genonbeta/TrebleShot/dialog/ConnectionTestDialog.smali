.class public Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "ConnectionTestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;
    }
.end annotation


# instance fields
.field private mActiveColor:I

.field private final mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPassiveColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice;",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/dialog/EstablishConnectionDialog$ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->mConnections:Ljava/util/List;

    const v0, 0x7f0300a5

    .line 38
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->mActiveColor:I

    const v0, 0x7f0300aa

    .line 39
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->mPassiveColor:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 41
    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x7f110173

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110033

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_45

    const p1, 0x7f11018b

    .line 45
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4d

    .line 47
    :cond_45
    new-instance p1, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;

    invoke-direct {p1, p0, p2}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$ConnectionListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog$1;)V

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_4d
    return-void
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)Ljava/util/List;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->mConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->mActiveColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionTestDialog;->mPassiveColor:I

    return p0
.end method
