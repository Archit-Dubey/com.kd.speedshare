.class public interface abstract Lcom/genonbeta/android/database/DatabaseObject;
.super Ljava/lang/Object;
.source "DatabaseObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getValues()Landroid/content/ContentValues;
.end method

.method public abstract getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
.end method

.method public abstract onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
.end method
