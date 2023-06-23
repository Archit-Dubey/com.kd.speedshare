.class Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/OnBackPressedCallback;
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleAwareOnBackPressedCallback"
.end annotation


# instance fields
.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V
    .registers 4

    .line 335
    iput-object p1, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 337
    iput-object p3, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 338
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 342
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method getOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;
    .registers 2

    .line 346
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    return-object v0
.end method

.method public handleOnBackPressed()Z
    .registers 3

    .line 351
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 352
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-interface {v0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoved()V
    .registers 2

    .line 368
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 359
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1a

    .line 360
    iget-object p1, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->this$0:Landroidx/activity/ComponentActivity;

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p1

    .line 361
    :try_start_9
    iget-object p2, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 362
    iget-object p2, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->this$0:Landroidx/activity/ComponentActivity;

    iget-object p2, p2, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    monitor-exit p1

    goto :goto_1a

    :catchall_17
    move-exception p2

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw p2

    :cond_1a
    :goto_1a
    return-void
.end method
