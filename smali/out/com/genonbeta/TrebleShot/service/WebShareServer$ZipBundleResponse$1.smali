.class Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$1;
.super Ljava/io/InputStream;
.source "WebShareServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;-><init>(Lcom/genonbeta/TrebleShot/service/WebShareServer;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/genonbeta/TrebleShot/service/WebShareServer;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/service/WebShareServer;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse$1;->val$this$0:Lcom/genonbeta/TrebleShot/service/WebShareServer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method
