.class public final Lcom/genonbeta/TrebleShot/ApplicationGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "ApplicationGlideModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;,
        Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .registers 6

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/AppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 42
    const-class p2, Landroid/content/pm/ApplicationInfo;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;-><init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object p2

    const-class p3, Landroid/content/pm/ApplicationInfo;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;

    invoke-direct {v1, p0, p1}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;-><init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;Landroid/content/Context;)V

    .line 57
    invoke-virtual {p2, p3, v0, v1}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method
