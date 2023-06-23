.class public interface abstract Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/database/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CastQueryListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/genonbeta/android/database/DatabaseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onObjectReconstructed(Lcom/genonbeta/android/database/SQLiteDatabase;Lcom/genonbeta/android/database/CursorItem;Lcom/genonbeta/android/database/DatabaseObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/database/SQLiteDatabase;",
            "Lcom/genonbeta/android/database/CursorItem;",
            "TT;)V"
        }
    .end annotation
.end method
