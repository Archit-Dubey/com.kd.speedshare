.class public Lcom/genonbeta/TrebleShot/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideRequests;
    .registers 2

    .line 51
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequests;

    return-object p1
.end method

.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->as(Ljava/lang/Class;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "TResourceType;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideRequest;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/GlideRequests;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/genonbeta/TrebleShot/GlideRequests;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/genonbeta/TrebleShot/GlideRequest;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequests;->asBitmap()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequests;->asDrawable()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequests;->asFile()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequests;->asGif()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->download(Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequests;->downloadOnly()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly()Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/io/File;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/Integer;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/net/URL;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load([B)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public load([B)Lcom/genonbeta/TrebleShot/GlideRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/genonbeta/TrebleShot/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Landroid/net/Uri;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/io/File;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/Integer;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load(Ljava/net/URL;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->load([B)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequests;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideRequests;
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideRequests;

    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .registers 3

    .line 167
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    if-eqz v0, :cond_8

    .line 168
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_14

    .line 170
    :cond_8
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    :goto_14
    return-void
.end method
