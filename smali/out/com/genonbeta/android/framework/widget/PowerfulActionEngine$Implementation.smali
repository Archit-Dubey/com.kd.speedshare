.class public Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;
.super Ljava/lang/Object;
.source "PowerfulActionEngine.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Implementation"
.end annotation


# instance fields
.field private mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;)V
    .registers 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    return-void
.end method


# virtual methods
.method public check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;TT;ZI)Z"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->check(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Lcom/genonbeta/android/framework/object/Selectable;ZI)Z

    move-result p1

    return p1
.end method

.method public finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->finish(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    return-void
.end method

.method public getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;)",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->getHolder(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Holder;

    move-result-object p1

    return-object p1
.end method

.method public hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->hasActive(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->reload(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;)Z"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)Z

    move-result p1

    return p1
.end method

.method public start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/genonbeta/android/framework/object/Selectable;",
            "M::",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
            ">(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
            "TT;TM;>;Z)Z"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Implementation;->mEngine:Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;

    invoke-virtual {v0, p1, p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine;->start(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;Z)Z

    move-result p1

    return p1
.end method
