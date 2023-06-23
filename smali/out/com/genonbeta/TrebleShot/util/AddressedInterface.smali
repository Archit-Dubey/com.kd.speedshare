.class public Lcom/genonbeta/TrebleShot/util/AddressedInterface;
.super Ljava/lang/Object;
.source "AddressedInterface.java"


# instance fields
.field private associatedAddress:Ljava/lang/String;

.field private networkInterface:Ljava/net/NetworkInterface;


# direct methods
.method public constructor <init>(Ljava/net/NetworkInterface;Ljava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->networkInterface:Ljava/net/NetworkInterface;

    .line 18
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->associatedAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssociatedAddress()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->associatedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->networkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method
