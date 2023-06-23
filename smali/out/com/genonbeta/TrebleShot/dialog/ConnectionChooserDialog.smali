.class public Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "ConnectionChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;
    }
.end annotation


# instance fields
.field private mActiveColor:I

.field private final mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field private final mNetworkInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/util/AddressedInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mPassiveColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V
    .registers 7

    .line 54
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mConnections:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mNetworkInterfaces:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mNetworkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    const v0, 0x7f0300a5

    .line 57
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mActiveColor:I

    const v0, 0x7f0300aa

    .line 58
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mPassiveColor:I

    .line 60
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$ConnectionListAdapter;-><init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)V

    .line 62
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 63
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$1;-><init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_49

    :cond_43
    const p3, 0x7f1101e2

    .line 73
    invoke-virtual {p0, p3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    :goto_49
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f11015f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f110027

    const/4 p3, 0x0

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f1101d3

    .line 77
    new-instance p3, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;

    invoke-direct {p3, p0, p1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog$2;-><init>(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;Landroid/app/Activity;)V

    invoke-virtual {p0, p2, p3}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mNetworkDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mNetworkInterfaces:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mActiveColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mPassiveColor:I

    return p0
.end method


# virtual methods
.method public declared-synchronized getConnections()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->mConnections:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
