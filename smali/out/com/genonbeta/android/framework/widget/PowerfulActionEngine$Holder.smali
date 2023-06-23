.class public Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;
.super Ljava/lang/Object;
.source "PowerfulActionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mSelectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->mSelectionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSelectionList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->mSelectionList:Ljava/util/List;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;->mSelectionList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 225
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
