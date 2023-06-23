.class Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$1;
.super Ljava/lang/Object;
.source "SimpleFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;


# direct methods
.method constructor <init>(Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$1;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller$1;->this$0:Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/widget/recyclerview/SimpleFastScroller;->hide(I)V

    return-void
.end method
