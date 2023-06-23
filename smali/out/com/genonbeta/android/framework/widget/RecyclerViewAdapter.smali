.class public abstract Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapter.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/ListAdapterImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$OnClickListener;,
        Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TV;>;",
        "Lcom/genonbeta/android/framework/widget/ListAdapterImpl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHorizontalOrientation:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public isHorizontalOrientation()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->mHorizontalOrientation:Z

    return v0
.end method

.method public onDataSetChanged()V
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setUseHorizontalOrientation(Z)V
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/genonbeta/android/framework/widget/RecyclerViewAdapter;->mHorizontalOrientation:Z

    return-void
.end method
