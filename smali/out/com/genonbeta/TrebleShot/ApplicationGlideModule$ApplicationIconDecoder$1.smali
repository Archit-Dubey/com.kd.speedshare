.class Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder$1;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "ApplicationGlideModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;->decode(Landroid/content/pm/ApplicationInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder$1;->this$1:Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getResourceClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 129
    const-class v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder$1;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_13

    .line 136
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder$1;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
