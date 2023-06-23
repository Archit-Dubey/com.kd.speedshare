.class Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader$1;
.super Ljava/lang/Object;
.source "ApplicationGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;->buildLoadData(Landroid/content/pm/ApplicationInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;

.field final synthetic val$applicationInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 67
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader$1;->this$1:Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader$1;->val$applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 1

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 90
    const-class v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 97
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader$1;->val$applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
