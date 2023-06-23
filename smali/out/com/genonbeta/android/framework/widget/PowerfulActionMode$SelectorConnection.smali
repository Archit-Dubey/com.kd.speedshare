.class public Lcom/genonbeta/android/framework/widget/PowerfulActionMode$SelectorConnection;
.super Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;
.source "PowerfulActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectorConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        ">",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection<",
        "TT;",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/genonbeta/android/framework/widget/PowerfulActionMode;Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode;",
            "Lcom/genonbeta/android/framework/widget/PowerfulActionMode$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$SelectorConnection;-><init>(Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;)V

    return-void
.end method
