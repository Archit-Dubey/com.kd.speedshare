.class public Lcom/genonbeta/android/updatewithgithub/RemoteServer;
.super Ljava/lang/Object;
.source "RemoteServer.java"


# instance fields
.field private mConnection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/RemoteServer;->mConnection:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/RemoteServer;->mConnection:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1388

    .line 22
    invoke-virtual {v0, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->readTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UTF-8"

    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 27
    :cond_31
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->receive(Ljava/lang/Appendable;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionAddress()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/genonbeta/android/updatewithgithub/RemoteServer;->mConnection:Ljava/lang/String;

    return-object v0
.end method

.method public setConnection(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/genonbeta/android/updatewithgithub/RemoteServer;->mConnection:Ljava/lang/String;

    return-void
.end method
