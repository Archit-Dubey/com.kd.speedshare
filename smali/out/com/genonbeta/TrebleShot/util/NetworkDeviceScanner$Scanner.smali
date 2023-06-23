.class public Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;
.super Ljava/lang/Object;
.source "NetworkDeviceScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Scanner"
.end annotation


# instance fields
.field private mAddressPrefix:Ljava/lang/String;

.field private mDevices:[Z

.field private mThreadsExited:I

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "192.168.0."

    .line 96
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mAddressPrefix:Ljava/lang/String;

    const/16 p1, 0x100

    new-array p1, p1, [Z

    .line 97
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mDevices:[Z

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mThreadsExited:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    :goto_2
    iget-object v2, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mDevices:[Z

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6a

    .line 115
    monitor-enter v2

    .line 116
    :try_start_9
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mDevices:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_63

    if-eqz v1, :cond_63

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$200(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_63

    .line 119
    :cond_1a
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mDevices:[Z

    aput-boolean v4, v3, v1

    .line 120
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_67

    .line 123
    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mAddressPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x12c

    .line 125
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$300(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 126
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$300(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v4}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$000(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    invoke-virtual {v4}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;->onDeviceFound(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5d} :catch_5e

    goto :goto_64

    :catch_5e
    move-exception v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64

    .line 117
    :cond_63
    :goto_63
    :try_start_63
    monitor-exit v2

    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_67
    move-exception v0

    .line 120
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_67

    throw v0

    .line 132
    :cond_6a
    iget v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mThreadsExited:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mThreadsExited:I

    if-nez v1, :cond_7f

    .line 135
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$000(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$400(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V

    :cond_7f
    return-void
.end method

.method public updateScanner()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$000(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getAddressPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mAddressPrefix:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Z

    .line 107
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mDevices:[Z

    .line 108
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->access$100(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)I

    move-result v0

    iput v0, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$Scanner;->mThreadsExited:I

    return-void
.end method
