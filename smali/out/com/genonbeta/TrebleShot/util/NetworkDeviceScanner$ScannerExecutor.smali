.class public Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;
.super Ljava/lang/Object;
.source "NetworkDeviceScanner.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScannerExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;


# direct methods
.method protected constructor <init>(Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner$ScannerExecutor;->this$0:Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
