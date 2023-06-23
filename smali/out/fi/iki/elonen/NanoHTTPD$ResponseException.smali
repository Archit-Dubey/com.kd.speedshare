.class public final Lfi/iki/elonen/NanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b2cc1565237327cL


# instance fields
.field private final status:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .registers 3

    .line 1530
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1531
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 1535
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1536
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .registers 2

    .line 1540
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method
