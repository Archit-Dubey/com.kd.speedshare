.class public Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;
.super Ljava/lang/Object;
.source "TransferInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/object/TransferInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;-><init>(Lcom/genonbeta/TrebleShot/object/TransferInstance$1;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    return-void
.end method


# virtual methods
.method public build(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)Lcom/genonbeta/TrebleShot/object/TransferInstance;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildAll(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V

    .line 163
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    return-object p1
.end method

.method public supply(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->access$302(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    return-object p0
.end method

.method public supply(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->access$202(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p0
.end method

.method public supply(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->access$402(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    return-object p0
.end method

.method public supply(Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;->mTransferInstance:Lcom/genonbeta/TrebleShot/object/TransferInstance;

    invoke-static {v0, p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->access$102(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object p0
.end method
