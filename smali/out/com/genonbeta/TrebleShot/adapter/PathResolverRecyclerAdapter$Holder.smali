.class public Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PathResolverRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field public container:Landroid/view/View;

.field public image:Landroid/widget/ImageView;

.field public index:Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index<",
            "TE;>;"
        }
    .end annotation
.end field

.field public text:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->container:Landroid/view/View;

    const v0, 0x7f090158

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->image:Landroid/widget/ImageView;

    const v0, 0x7f090159

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;->text:Landroid/widget/Button;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$1;)V
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;-><init>(Landroid/view/View;)V

    return-void
.end method
