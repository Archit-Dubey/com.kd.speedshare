.class public abstract Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;
.super Lcom/github/kevinsawicki/http/HttpRequest$Operation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CloseOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/kevinsawicki/http/HttpRequest$Operation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field private final ignoreCloseExceptions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .registers 3

    .line 748
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    .line 750
    iput-boolean p2, p0, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_b

    .line 756
    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 757
    :cond_b
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_15

    .line 759
    :try_start_f
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_1a

    goto :goto_1a

    .line 764
    :cond_15
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :catch_1a
    :goto_1a
    return-void
.end method
