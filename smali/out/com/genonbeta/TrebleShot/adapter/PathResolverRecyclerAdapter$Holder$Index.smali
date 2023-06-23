.class public Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;
.super Ljava/lang/Object;
.source "PathResolverRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Index"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public imgRes:I

.field public object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITD;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->title:Ljava/lang/String;

    .line 124
    iput p2, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->imgRes:I

    .line 125
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TD;)V"
        }
    .end annotation

    const v0, 0x7f0700d9

    .line 130
    invoke-direct {p0, p1, v0, p2}, Lcom/genonbeta/TrebleShot/adapter/PathResolverRecyclerAdapter$Holder$Index;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
