.class public Lcom/genonbeta/TrebleShot/object/FileShortcutObject;
.super Ljava/lang/Object;
.source "FileShortcutObject.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/genonbeta/android/database/DatabaseObject<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public path:Landroid/net/Uri;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->path:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 28
    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;-><init>(Landroid/net/Uri;)V

    .line 29
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->path:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 6

    .line 35
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "fileBookmark"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "path"

    aput-object v4, v3, v1

    const-string v4, "%s = ?"

    .line 36
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->path:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 35
    invoke-virtual {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    return-object v0
.end method

.method public onCreateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public onRemoveObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public onUpdateObject(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public reconstruct(Lcom/genonbeta/android/database/CursorItem;)V
    .registers 3

    const-string v0, "title"

    .line 54
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->title:Ljava/lang/String;

    const-string v0, "path"

    .line 55
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/FileShortcutObject;->path:Landroid/net/Uri;

    return-void
.end method
