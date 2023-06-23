.class public interface abstract Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerHandler;
.super Ljava/lang/Object;
.source "NetworkDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScannerHandler"
.end annotation


# virtual methods
.method public abstract onDeviceFound(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
.end method

.method public abstract onThreadsCompleted()V
.end method
