.class Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;
.super Ljava/lang/Object;
.source "ApplicationGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/ApplicationGlideModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationIconModelLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Landroid/content/pm/ApplicationInfo;",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;


# direct methods
.method private constructor <init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;->this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;Lcom/genonbeta/TrebleShot/ApplicationGlideModule$1;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;-><init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;)V

    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/content/pm/ApplicationInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader$1;

    invoke-direct {p4, p0, p1}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader$1;-><init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    .line 60
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;->buildLoadData(Landroid/content/pm/ApplicationInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    .line 60
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconModelLoader;->handles(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
