.class public Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;
.super Ljava/lang/Object;
.source "MediaStoreImageThumbLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance p1, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method