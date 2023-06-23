.class public Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;
.super Landroid/os/Binder;
.source "WorkerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/WorkerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/WorkerService;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/genonbeta/TrebleShot/service/WorkerService;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WorkerService$LocalBinder;->this$0:Lcom/genonbeta/TrebleShot/service/WorkerService;

    return-object v0
.end method
