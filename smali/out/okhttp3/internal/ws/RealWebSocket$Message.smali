.class final Lokhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lokio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILokio/ByteString;)V
    .registers 3

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 558
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lokio/ByteString;

    return-void
.end method
