.class public Lcom/genonbeta/TrebleShot/object/TransferInstance;
.super Ljava/lang/Object;
.source "TransferInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/object/TransferInstance$Builder;
    }
.end annotation


# instance fields
.field private mAssignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

.field private mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

.field private mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

.field private mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual/range {p0 .. p5}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildAll(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/object/TransferInstance$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferGroup;)Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object p1
.end method

.method static synthetic access$202(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p1
.end method

.method static synthetic access$302(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    return-object p1
.end method

.method static synthetic access$402(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mAssignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    return-object p1
.end method


# virtual methods
.method protected buildAll(Lcom/genonbeta/TrebleShot/database/AccessDatabase;JLjava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;,
            Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildGroup(Lcom/genonbeta/TrebleShot/database/AccessDatabase;J)V

    if-eqz p5, :cond_15

    .line 38
    invoke-virtual {p0, p1, p4}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildDevice(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildAssignee(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 40
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mAssignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    goto :goto_26

    .line 42
    :cond_15
    invoke-virtual {p0, p1, p4}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildDevice(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->buildAssignee(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 47
    :goto_26
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 49
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object p2

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object p3

    iget-object p3, p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_56

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object p2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object p3

    iget-object p3, p3, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    iput-object p3, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->connectionAdapter:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    :cond_56
    return-void
.end method

.method protected buildAssignee(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mAssignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    if-eqz v0, :cond_5

    return-void

    .line 61
    :cond_5
    :try_start_5
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-direct {v0, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 65
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mAssignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    .line 67
    :catch_10
    new-instance p1, Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;

    invoke-direct {p1}, Lcom/genonbeta/TrebleShot/exception/AssigneeNotFoundException;-><init>()V

    throw p1
.end method

.method protected buildConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    if-eqz v0, :cond_5

    return-void

    .line 93
    :cond_5
    :try_start_5
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v0, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 97
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    .line 99
    :catch_10
    new-instance p1, Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;

    invoke-direct {p1}, Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;-><init>()V

    throw p1
.end method

.method protected buildConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    if-eqz v0, :cond_5

    return-void

    .line 77
    :cond_5
    :try_start_5
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v0, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 81
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    .line 83
    :catch_10
    new-instance p1, Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;

    invoke-direct {p1}, Lcom/genonbeta/TrebleShot/exception/ConnectionNotFoundException;-><init>()V

    throw p1
.end method

.method protected buildDevice(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    if-eqz v0, :cond_5

    return-void

    .line 109
    :cond_5
    :try_start_5
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-direct {v0, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 113
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    .line 115
    :catch_10
    new-instance p1, Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;

    invoke-direct {p1}, Lcom/genonbeta/TrebleShot/exception/DeviceNotFoundException;-><init>()V

    throw p1
.end method

.method protected buildGroup(Lcom/genonbeta/TrebleShot/database/AccessDatabase;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    if-eqz v0, :cond_5

    return-void

    .line 125
    :cond_5
    :try_start_5
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    invoke-direct {v0, p2, p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 127
    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 129
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    .line 131
    :catch_10
    new-instance p1, Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;

    invoke-direct {p1}, Lcom/genonbeta/TrebleShot/exception/TransferGroupNotFoundException;-><init>()V

    throw p1
.end method

.method public getAssignee()Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mAssignee:Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    return-object v0
.end method

.method public getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mConnection:Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    return-object v0
.end method

.method public getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mDevice:Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object v0
.end method

.method public getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/TransferInstance;->mGroup:Lcom/genonbeta/TrebleShot/object/TransferGroup;

    return-object v0
.end method
