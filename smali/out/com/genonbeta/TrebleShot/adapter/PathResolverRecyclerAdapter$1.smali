.class Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "PathResolverRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->onBindViewHolder(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;

.field final synthetic val$holder:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;->val$holder:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 61
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;->this$0:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;->access$100(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;)Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;->val$holder:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;

    invoke-interface {p1, v0}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$OnClickListener;->onClick(Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;)V

    return-void
.end method
