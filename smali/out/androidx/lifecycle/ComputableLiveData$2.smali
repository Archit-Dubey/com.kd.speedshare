.class Landroidx/lifecycle/ComputableLiveData$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2

    .line 87
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 95
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 99
    :goto_e
    :try_start_e
    iget-object v4, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v4, v4, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 101
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_e

    :cond_20
    if-eqz v3, :cond_29

    .line 104
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_32

    .line 108
    :cond_29
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v3

    goto :goto_3b

    :catchall_32
    move-exception v0

    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_3b
    :goto_3b
    if-eqz v1, :cond_47

    .line 118
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_47
    return-void
.end method