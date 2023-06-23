.class public abstract Lcom/genonbeta/android/framework/widget/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/ListAdapterImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/genonbeta/android/framework/widget/ListAdapterImpl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/ListViewAdapter;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/ListViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onDataSetChanged()V
    .registers 1

    .line 29
    invoke-virtual {p0}, Lcom/genonbeta/android/framework/widget/ListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
