.class public final Lcom/genonbeta/TrebleShot/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static centerCropTransform2:Lcom/genonbeta/TrebleShot/GlideOptions;

.field private static centerInsideTransform1:Lcom/genonbeta/TrebleShot/GlideOptions;

.field private static circleCropTransform3:Lcom/genonbeta/TrebleShot/GlideOptions;

.field private static fitCenterTransform0:Lcom/genonbeta/TrebleShot/GlideOptions;

.field private static noAnimation5:Lcom/genonbeta/TrebleShot/GlideOptions;

.field private static noTransformation4:Lcom/genonbeta/TrebleShot/GlideOptions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 1

    .line 177
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->centerCropTransform2:Lcom/genonbeta/TrebleShot/GlideOptions;

    if-nez v0, :cond_13

    .line 178
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    .line 179
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->centerCrop()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->centerCropTransform2:Lcom/genonbeta/TrebleShot/GlideOptions;

    .line 181
    :cond_13
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->centerCropTransform2:Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 1

    .line 164
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->centerInsideTransform1:Lcom/genonbeta/TrebleShot/GlideOptions;

    if-nez v0, :cond_13

    .line 165
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    .line 166
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->centerInside()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->centerInsideTransform1:Lcom/genonbeta/TrebleShot/GlideOptions;

    .line 168
    :cond_13
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->centerInsideTransform1:Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 1

    .line 190
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->circleCropTransform3:Lcom/genonbeta/TrebleShot/GlideOptions;

    if-nez v0, :cond_13

    .line 191
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    .line 192
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->circleCrop()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->circleCropTransform3:Lcom/genonbeta/TrebleShot/GlideOptions;

    .line 194
    :cond_13
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->circleCropTransform3:Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->decode(Ljava/lang/Class;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 60
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 261
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 288
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 279
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->encodeQuality(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 105
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->error(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 96
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 1

    .line 151
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->fitCenterTransform0:Lcom/genonbeta/TrebleShot/GlideOptions;

    if-nez v0, :cond_13

    .line 152
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    .line 153
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->fitCenter()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->fitCenterTransform0:Lcom/genonbeta/TrebleShot/GlideOptions;

    .line 155
    :cond_13
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->fitCenterTransform0:Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 243
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3

    .line 252
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->frame(J)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static noAnimation()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 1

    .line 297
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->noAnimation5:Lcom/genonbeta/TrebleShot/GlideOptions;

    if-nez v0, :cond_13

    .line 298
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    .line 299
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->dontAnimate()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->noAnimation5:Lcom/genonbeta/TrebleShot/GlideOptions;

    .line 301
    :cond_13
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->noAnimation5:Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 1

    .line 212
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->noTransformation4:Lcom/genonbeta/TrebleShot/GlideOptions;

    if-nez v0, :cond_13

    .line 213
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    .line 214
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->dontTransform()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->noTransformation4:Lcom/genonbeta/TrebleShot/GlideOptions;

    .line 216
    :cond_13
    sget-object v0, Lcom/genonbeta/TrebleShot/GlideOptions;->noTransformation4:Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 133
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->override(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3

    .line 124
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->override(II)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 87
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->placeholder(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 78
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 69
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 142
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 51
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->sizeMultiplier(F)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 114
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->skipMemoryCache(Z)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 270
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->timeout(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 605
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final autoClone()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 617
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->centerCrop()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerCrop()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 503
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->centerInside()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerInside()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 531
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->circleCrop()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final circleCrop()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 545
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->clone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 426
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->clone()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->decode(Ljava/lang/Class;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Ljava/lang/Class;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 440
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->disallowHardwareConfig()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final disallowHardwareConfig()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 475
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 336
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->dontAnimate()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontAnimate()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 598
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->dontTransform()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransform()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 591
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 482
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 447
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->encodeQuality(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final encodeQuality(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 454
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->error(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final error(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 385
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 378
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->fallback(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final fallback(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 371
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 364
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->fitCenter()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final fitCenter()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 517
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 468
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/GlideOptions;->frame(J)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final frame(J)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3

    .line 461
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->lock()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final lock()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 611
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->onlyRetrieveFromCache(Z)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final onlyRetrieveFromCache(Z)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 329
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->optionalCenterCrop()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterCrop()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 496
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->optionalCenterInside()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterInside()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 524
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->optionalCircleCrop()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCircleCrop()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 538
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideOptions;->optionalFitCenter()Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalFitCenter()Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 510
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 568
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public final optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 576
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->override(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/RequestOptions;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/GlideOptions;->override(II)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final override(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 413
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public final override(II)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3

    .line 406
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->placeholder(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final placeholder(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 357
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 350
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final priority(Lcom/bumptech/glide/Priority;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 343
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 433
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final signature(Lcom/bumptech/glide/load/Key;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 420
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->sizeMultiplier(F)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final sizeMultiplier(F)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 308
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->skipMemoryCache(Z)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final skipMemoryCache(Z)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 399
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final theme(Landroid/content/res/Resources$Theme;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 392
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->timeout(I)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(I)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 489
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 3

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transform(Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 552
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public final transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .line 584
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/genonbeta/TrebleShot/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 561
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->useAnimationPool(Z)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final useAnimationPool(Z)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 322
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/genonbeta/TrebleShot/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final useUnlimitedSourceGeneratorsPool(Z)Lcom/genonbeta/TrebleShot/GlideOptions;
    .registers 2

    .line 315
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/genonbeta/TrebleShot/GlideOptions;

    return-object p1
.end method
