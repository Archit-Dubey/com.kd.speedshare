.class final Lcom/bumptech/glide/GeneratedRequestManagerFactory;
.super Ljava/lang/Object;
.source "GeneratedRequestManagerFactory.java"

# interfaces
.implements Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .registers 6

    .line 19
    new-instance v0, Lcom/genonbeta/TrebleShot/GlideRequests;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/GlideRequests;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-object v0
.end method
