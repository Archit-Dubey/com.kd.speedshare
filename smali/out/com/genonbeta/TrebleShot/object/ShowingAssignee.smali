.class public Lcom/genonbeta/TrebleShot/object/ShowingAssignee;
.super Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;
.source "ShowingAssignee.java"

# interfaces
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# instance fields
.field public connection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field public device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>()V

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public comparisonSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getComparableDate()J
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-wide v0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    return-wide v0
.end method

.method public getComparableName()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getComparableSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()J
    .registers 5

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->deviceId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s_%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectableTitle()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;->device:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectableSelected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setId(J)V
    .registers 3

    return-void
.end method

.method public setSelectableSelected(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
