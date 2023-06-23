.class public Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;
.super Ljava/lang/Object;
.source "CommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessHolder"
.end annotation


# instance fields
.field public activeConnection:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

.field public attemptsLeft:I

.field public builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder<",
            "Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;",
            ">;"
        }
    .end annotation
.end field

.field public currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

.field public deviceId:Ljava/lang/String;

.field public groupId:J

.field public notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

.field public recoverInterruptions:Z

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

.field public transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

.field public type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/service/CommunicationService;)V
    .registers 2

    .line 1753
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->this$0:Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1762
    iput-boolean p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->recoverInterruptions:Z

    const/4 p1, 0x2

    .line 1764
    iput p1, p0, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->attemptsLeft:I

    return-void
.end method
