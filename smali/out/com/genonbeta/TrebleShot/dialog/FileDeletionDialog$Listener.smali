.class public interface abstract Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog$Listener;
.super Ljava/lang/Object;
.source "FileDeletionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/dialog/FileDeletionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;I)V
.end method

.method public abstract onFileDeletion(Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)V
.end method
