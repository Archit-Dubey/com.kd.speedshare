.class Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;
.super Ljava/lang/Object;
.source "ApplicationGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/ApplicationGlideModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationIconDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Landroid/content/pm/ApplicationInfo;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule;Landroid/content/Context;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;->this$0:Lcom/genonbeta/TrebleShot/ApplicationGlideModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public decode(Landroid/content/pm/ApplicationInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 123
    new-instance p2, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder$1;

    invoke-direct {p2, p0, p1}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder$1;-><init>(Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;->decode(Landroid/content/pm/ApplicationInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/content/pm/ApplicationInfo;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/ApplicationGlideModule$ApplicationIconDecoder;->handles(Landroid/content/pm/ApplicationInfo;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
