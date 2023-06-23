.class Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;
.super Ljava/lang/Object;
.source "ApplicationGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ApplicationGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Landroid/content/pm/ApplicationInfo;",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;->this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance p1, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;->this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;-><init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
