.class public interface abstract Lcom/genonbeta/android/database/SQLQuery$Select$LoadListener;
.super Ljava/lang/Object;
.source "SQLQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/database/SQLQuery$Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadListener"
.end annotation


# virtual methods
.method public abstract onLoad(Lcom/genonbeta/android/database/SQLiteDatabase;Landroid/database/Cursor;Lcom/genonbeta/android/database/CursorItem;)V
.end method

.method public abstract onOpen(Lcom/genonbeta/android/database/SQLiteDatabase;Landroid/database/Cursor;)V
.end method
