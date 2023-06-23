.class public Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method
