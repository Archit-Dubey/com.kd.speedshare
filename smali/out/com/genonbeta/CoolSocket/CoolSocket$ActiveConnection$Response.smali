.class public Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;
.super Ljava/lang/Object;
.source "CoolSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public headerIndex:Lorg/json/JSONObject;

.field public remoteAddress:Ljava/net/SocketAddress;

.field public response:Ljava/lang/String;

.field final synthetic this$0:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

.field public totalLength:J


# direct methods
.method public constructor <init>(Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;)V
    .registers 4

    .line 754
    iput-object p1, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->this$0:Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 747
    iput-wide v0, p0, Lcom/genonbeta/CoolSocket/CoolSocket$ActiveConnection$Response;->totalLength:J

    return-void
.end method
