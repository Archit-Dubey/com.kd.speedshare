.class public Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;
.super Ljava/lang/Object;
.source "ActiveConnectionListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressedEditableInterface"
.end annotation


# instance fields
.field private mInterface:Lcom/genonbeta/TrebleShot/util/AddressedInterface;

.field private mName:Ljava/lang/String;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/util/AddressedInterface;Ljava/lang/String;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mSelected:Z

    .line 86
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mInterface:Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    .line 87
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 7

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mInterface:Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mInterface:Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    .line 97
    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mName:Ljava/lang/String;

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3f

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3f
    :goto_3f
    const/4 p1, 0x1

    return p1

    :cond_41
    return v1
.end method

.method public comparisonSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getComparableDate()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparableSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mInterface:Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getInterface()Lcom/genonbeta/TrebleShot/util/AddressedInterface;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mInterface:Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mSelected:Z

    return v0
.end method

.method public setId(J)V
    .registers 3

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    .line 166
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/ActiveConnectionListAdapter$AddressedEditableInterface;->mSelected:Z

    const/4 p1, 0x1

    return p1
.end method
