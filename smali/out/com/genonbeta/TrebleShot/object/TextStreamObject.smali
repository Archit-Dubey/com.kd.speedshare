.class public Lcom/genonbeta/TrebleShot/object/TextStreamObject;
.super Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;
.source "TextStreamObject.java"

# interfaces
.implements Lcom/genonbeta/android/database/DatabaseObject;
.implements Lcom/genonbeta/TrebleShot/object/Editable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;",
        "Lcom/genonbeta/android/database/DatabaseObject<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/genonbeta/TrebleShot/object/Editable;"
    }
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->setId(J)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 15

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v8, v0

    const-string v5, "text/plain"

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    .line 40
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x64

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyFilter([Ljava/lang/String;)Z
    .registers 8

    .line 46
    invoke-super {p0, p1}, Lcom/genonbeta/TrebleShot/widget/GroupEditableListAdapter$GroupShareable;->applyFilter([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 49
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_23

    aget-object v4, p1, v3

    .line 50
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    return v1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_23
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 59
    instance-of v0, p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;

    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    iget-wide v2, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public getValues()Landroid/content/ContentValues;
    .registers 4

    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    iget-wide v1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWhere()Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 6

    .line 65
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "clipboard"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "id=?"

    invoke-virtual {v0, v1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

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
    .registers 4

    const-string v0, "id"

    .line 84
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    const-string v0, "text"

    .line 85
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    const-string v0, "time"

    .line 86
    invoke-virtual {p1, v0}, Lcom/genonbeta/android/database/CursorItem;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->date:J

    const-string p1, "text/plain"

    .line 87
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->mimeType:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->size:J

    .line 89
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->friendlyName:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->fileName:Ljava/lang/String;

    return-void
.end method
