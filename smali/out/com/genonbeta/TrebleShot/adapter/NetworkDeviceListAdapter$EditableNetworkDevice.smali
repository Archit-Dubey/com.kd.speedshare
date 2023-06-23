.class public Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;
.super Lcom/genonbeta/TrebleShot/object/NetworkDevice;
.source "NetworkDeviceListAdapter.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditableNetworkDevice"
.end annotation


# instance fields
.field private mIsSelected:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->mIsSelected:Z

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 7

    .line 139
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_1c

    aget-object v3, p1, v2

    .line 140
    iget-object v4, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1c
    return v1
.end method

.method public comparisonSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getComparableDate()J
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->lastUsageTime:J

    return-wide v0
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getComparableSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->mIsSelected:Z

    return v0
.end method

.method public setId(J)V
    .registers 3

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    .line 197
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/adapter/NetworkDeviceListAdapter$EditableNetworkDevice;->mIsSelected:Z

    const/4 p1, 0x1

    return p1
.end method
