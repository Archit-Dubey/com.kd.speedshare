.class public abstract Lcom/github/kevinsawicki/http/HttpRequest$Operation;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 711
    :try_start_1
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_5} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_13
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    .line 720
    :try_start_5
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;->done()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 723
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_10
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1f

    :catch_13
    move-exception v1

    .line 717
    :try_start_14
    new-instance v2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_1a
    move-exception v1

    .line 714
    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x1

    .line 720
    :goto_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;->done()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2c

    :catch_23
    move-exception v2

    if-nez v1, :cond_2c

    .line 723
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, v2}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 724
    :cond_2c
    :goto_2c
    throw v0
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
