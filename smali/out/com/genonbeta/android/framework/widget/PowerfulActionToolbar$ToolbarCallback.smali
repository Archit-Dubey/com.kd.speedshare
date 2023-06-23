.class public interface abstract Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar$ToolbarCallback;
.super Ljava/lang/Object;
.source "PowerfulActionToolbar.java"

# interfaces
.implements Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/widget/PowerfulActionToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ToolbarCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/framework/object/Selectable;",
        "ReturningObject::",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$Callback<",
        "TT;TReturningObject;>;"
    }
.end annotation


# virtual methods
.method public abstract onActionMenuItemSelected(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/MenuItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TReturningObject;",
            "Landroid/view/MenuItem;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onCreateActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;Landroid/view/Menu;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TReturningObject;",
            "Landroid/view/Menu;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onPrepareActionMenu(Landroid/content/Context;Lcom/genonbeta/android/framework/widget/PowerfulActionEngine$PowerfulActionEngineImpl;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TReturningObject;)Z"
        }
    .end annotation
.end method
