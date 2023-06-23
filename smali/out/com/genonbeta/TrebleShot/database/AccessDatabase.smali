.class public Lcom/genonbeta/TrebleShot/database/AccessDatabase;
.super Lcom/genonbeta/android/database/SQLiteDatabase;
.source "AccessDatabase.java"


# static fields
.field public static final ACTION_DATABASE_CHANGE:Ljava/lang/String; = "com.genonbeta.intent.action.DATABASE_CHANGE"

.field public static final DATABASE_NAME:Ljava/lang/String;

.field public static final DATABASE_VERSION:I = 0xc

.field public static final DIVIS_TRANSFER:Ljava/lang/String; = "divisionTransfer"

.field public static final EXTRA_AFFECTED_ITEM_COUNT:Ljava/lang/String; = "affectedItemCount"

.field public static final EXTRA_CHANGE_TYPE:Ljava/lang/String; = "changeType"

.field public static final EXTRA_TABLE_NAME:Ljava/lang/String; = "tableName"

.field public static final FIELD_CLIPBOARD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_CLIPBOARD_TEXT:Ljava/lang/String; = "text"

.field public static final FIELD_CLIPBOARD_TIME:Ljava/lang/String; = "time"

.field public static final FIELD_DEVICECONNECTION_ADAPTERNAME:Ljava/lang/String; = "adapterName"

.field public static final FIELD_DEVICECONNECTION_DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final FIELD_DEVICECONNECTION_IPADDRESS:Ljava/lang/String; = "ipAddress"

.field public static final FIELD_DEVICECONNECTION_LASTCHECKEDDATE:Ljava/lang/String; = "lastCheckedDate"

.field public static final FIELD_DEVICES_BRAND:Ljava/lang/String; = "brand"

.field public static final FIELD_DEVICES_BUILDNAME:Ljava/lang/String; = "buildName"

.field public static final FIELD_DEVICES_BUILDNUMBER:Ljava/lang/String; = "buildNumber"

.field public static final FIELD_DEVICES_ID:Ljava/lang/String; = "deviceId"

.field public static final FIELD_DEVICES_ISLOCALADDRESS:Ljava/lang/String; = "isLocalAddress"

.field public static final FIELD_DEVICES_ISRESTRICTED:Ljava/lang/String; = "isRestricted"

.field public static final FIELD_DEVICES_ISTRUSTED:Ljava/lang/String; = "isTrusted"

.field public static final FIELD_DEVICES_LASTUSAGETIME:Ljava/lang/String; = "lastUsedTime"

.field public static final FIELD_DEVICES_MODEL:Ljava/lang/String; = "model"

.field public static final FIELD_DEVICES_TMPSECUREKEY:Ljava/lang/String; = "tmpSecureKey"

.field public static final FIELD_DEVICES_USER:Ljava/lang/String; = "user"

.field public static final FIELD_FILEBOOKMARK_PATH:Ljava/lang/String; = "path"

.field public static final FIELD_FILEBOOKMARK_TITLE:Ljava/lang/String; = "title"

.field public static final FIELD_TRANSFERASSIGNEE_CONNECTIONADAPTER:Ljava/lang/String; = "connectionAdapter"

.field public static final FIELD_TRANSFERASSIGNEE_DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final FIELD_TRANSFERASSIGNEE_GROUPID:Ljava/lang/String; = "groupId"

.field public static final FIELD_TRANSFERASSIGNEE_ISCLONE:Ljava/lang/String; = "isClone"

.field public static final FIELD_TRANSFERGROUP_DATECREATED:Ljava/lang/String; = "dateCreated"

.field public static final FIELD_TRANSFERGROUP_ID:Ljava/lang/String; = "id"

.field public static final FIELD_TRANSFERGROUP_ISSHAREDONWEB:Ljava/lang/String; = "isSharedOnWeb"

.field public static final FIELD_TRANSFERGROUP_SAVEPATH:Ljava/lang/String; = "savePath"

.field public static final FIELD_TRANSFER_ACCESSPORT:Ljava/lang/String; = "accessPort"

.field public static final FIELD_TRANSFER_DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final FIELD_TRANSFER_DIRECTORY:Ljava/lang/String; = "directory"

.field public static final FIELD_TRANSFER_FILE:Ljava/lang/String; = "file"

.field public static final FIELD_TRANSFER_FLAG:Ljava/lang/String; = "flag"

.field public static final FIELD_TRANSFER_GROUPID:Ljava/lang/String; = "groupId"

.field public static final FIELD_TRANSFER_ID:Ljava/lang/String; = "id"

.field public static final FIELD_TRANSFER_MIME:Ljava/lang/String; = "mime"

.field public static final FIELD_TRANSFER_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_TRANSFER_SIZE:Ljava/lang/String; = "size"

.field public static final FIELD_TRANSFER_SKIPPEDBYTES:Ljava/lang/String; = "skippedBytes"

.field public static final FIELD_TRANSFER_TYPE:Ljava/lang/String; = "type"

.field public static final FIELD_WRITABLEPATH_PATH:Ljava/lang/String; = "path"

.field public static final FIELD_WRITABLEPATH_TITLE:Ljava/lang/String; = "title"

.field public static final TABLE_CLIPBOARD:Ljava/lang/String; = "clipboard"

.field public static final TABLE_DEVICECONNECTION:Ljava/lang/String; = "deviceConnection"

.field public static final TABLE_DEVICES:Ljava/lang/String; = "devices"

.field public static final TABLE_FILEBOOKMARK:Ljava/lang/String; = "fileBookmark"

.field public static final TABLE_TRANSFER:Ljava/lang/String; = "transfer"

.field public static final TABLE_TRANSFERASSIGNEE:Ljava/lang/String; = "transferAssignee"

.field public static final TABLE_TRANSFERGROUP:Ljava/lang/String; = "transferGroup"

.field public static final TABLE_WRITABLEPATH:Ljava/lang/String; = "writablePath"

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_INSERT:Ljava/lang/String; = "typeInsert"

.field public static final TYPE_REMOVE:Ljava/lang/String; = "typeRemove"

.field public static final TYPE_UPDATE:Ljava/lang/String; = "typeUpdate"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-class v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->TAG:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".db"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->DATABASE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 119
    sget-object v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->DATABASE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/genonbeta/android/database/SQLiteDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static convertValues(Landroid/content/ContentValues;)Lcom/genonbeta/android/database/CursorItem;
    .registers 5

    .line 124
    new-instance v0, Lcom/genonbeta/android/database/CursorItem;

    invoke-direct {v0}, Lcom/genonbeta/android/database/CursorItem;-><init>()V

    .line 126
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/genonbeta/android/database/CursorItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/genonbeta/android/database/CursorItem;

    goto :goto_d

    :cond_21
    return-object v0
.end method


# virtual methods
.method protected broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V
    .registers 7

    .line 233
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.genonbeta.intent.action.DATABASE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/genonbeta/android/database/SQLQuery$Select;->tableName:Ljava/lang/String;

    const-string v2, "tableName"

    .line 234
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "changeType"

    .line 235
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 236
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getAffectedRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    const-string p1, "affectedItemCount"

    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 233
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public calculateTransactionSize(JLcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V
    .registers 11

    .line 241
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->reset()V

    .line 243
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 245
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "groupId=?"

    .line 244
    invoke-virtual {v0, v4, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v0

    const-class v3, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 243
    invoke-virtual {p0, v0, v3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 247
    iget-object v3, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->assignees:Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->loadAssigneeList(Lcom/genonbeta/android/database/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4f

    .line 250
    new-instance v3, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "divisionTransfer"

    invoke-direct {v3, v6, v5}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v5, v2, [Ljava/lang/String;

    .line 252
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 251
    invoke-virtual {v3, v4, v5}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    const-class p2, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    :cond_4f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_53
    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 255
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 256
    iget-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incoming:J

    iget-wide v3, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    add-long/2addr v0, v3

    iput-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incoming:J

    .line 257
    iget v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCount:I

    .line 259
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 260
    iget v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCountCompleted:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCountCompleted:I

    .line 261
    iget-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    iget-wide v3, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    add-long/2addr v0, v3

    iput-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    goto :goto_da

    .line 262
    :cond_8c
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 263
    iget-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    iget-object v3, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    iput-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->incomingCompleted:J

    goto :goto_da

    .line 265
    :cond_a2
    iget-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    iget-wide v3, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    add-long/2addr v0, v3

    iput-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    .line 266
    iget v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    .line 268
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->DONE:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 269
    iget v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCountCompleted:I

    add-int/2addr v0, v2

    iput v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCountCompleted:I

    .line 270
    iget-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    iget-wide v3, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    add-long/2addr v0, v3

    iput-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    goto :goto_da

    .line 271
    :cond_c5
    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->IN_PROGRESS:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 272
    iget-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    iget-object v3, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    iput-wide v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCompleted:J

    .line 275
    :cond_da
    :goto_da
    iget-boolean v0, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->hasIssues:Z

    if-nez v0, :cond_53

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object v1, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 276
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    sget-object v0, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->REMOVED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 277
    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 278
    :cond_f2
    iput-boolean v2, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->hasIssues:Z

    goto/16 :goto_53

    .line 281
    :cond_f6
    iput-boolean v2, p3, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->calculated:Z

    return-void
.end method

.method public getAffectedRowCount(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    const-string v3, "SELECT changes() AS affected_row_count"

    .line 290
    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_21

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "affected_row_count"

    .line 293
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_21} :catch_2e
    .catchall {:try_start_3 .. :try_end_21} :catchall_27

    :cond_21
    if-eqz v0, :cond_32

    .line 298
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_32

    :catchall_27
    move-exception p1

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_2d
    throw p1

    :catch_2e
    nop

    if-eqz v0, :cond_32

    goto :goto_23

    :cond_32
    :goto_32
    return-wide v1
.end method

.method public getDatabaseTables()Lcom/genonbeta/android/database/SQLValues;
    .registers 20

    .line 306
    new-instance v0, Lcom/genonbeta/android/database/SQLValues;

    invoke-direct {v0}, Lcom/genonbeta/android/database/SQLValues;-><init>()V

    const-string v1, "clipboard"

    .line 308
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v4, "id"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 309
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v6, "text"

    invoke-direct {v2, v6, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 310
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    const-string v6, "time"

    invoke-direct {v2, v6, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 311
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "devices"

    .line 313
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v6, "deviceId"

    invoke-direct {v2, v6, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 314
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "user"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 315
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "brand"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 316
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "model"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 317
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "buildName"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 318
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "buildNumber"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 319
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "lastUsedTime"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 320
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "isRestricted"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 321
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "isTrusted"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 322
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "isLocalAddress"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 323
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "tmpSecureKey"

    const/4 v8, 0x1

    invoke-direct {v2, v7, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 324
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "deviceConnection"

    .line 326
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "ipAddress"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 327
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v6, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 328
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "adapterName"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 329
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "lastCheckedDate"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 330
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "fileBookmark"

    .line 332
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "title"

    invoke-direct {v2, v7, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 333
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v9, "path"

    invoke-direct {v2, v9, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 334
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "transfer"

    .line 336
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 337
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    const-string v10, "groupId"

    invoke-direct {v2, v10, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 338
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v6, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 339
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v11, "file"

    invoke-direct {v2, v11, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 340
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v12, "name"

    invoke-direct {v2, v12, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 341
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v13, "size"

    invoke-direct {v2, v13, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 342
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v14, "mime"

    invoke-direct {v2, v14, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 343
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v15, "type"

    invoke-direct {v2, v15, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 344
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v5, "directory"

    invoke-direct {v2, v5, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 345
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    move-object/from16 v16, v9

    const-string v9, "accessPort"

    invoke-direct {v2, v9, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 346
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    const-string v8, "skippedBytes"

    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-direct {v2, v8, v3, v7}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 347
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v7, "flag"

    move-object/from16 v18, v8

    const/4 v8, 0x1

    invoke-direct {v2, v7, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 348
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "divisionTransfer"

    .line 350
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    const/4 v8, 0x0

    invoke-direct {v2, v4, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 351
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v10, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 352
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const/4 v8, 0x1

    invoke-direct {v2, v6, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 353
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v11, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 354
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const/4 v11, 0x0

    invoke-direct {v2, v12, v3, v11}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 355
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v13, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 356
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v14, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 357
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const/4 v11, 0x0

    invoke-direct {v2, v15, v3, v11}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 358
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v5, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 359
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v9, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 360
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    move-object/from16 v5, v18

    const/4 v9, 0x0

    invoke-direct {v2, v5, v3, v9}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 361
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v7, v3, v8}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 362
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "transferAssignee"

    .line 364
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v10, v3, v9}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 365
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    invoke-direct {v2, v6, v3, v9}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 366
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v5, "connectionAdapter"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v3, v6}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 367
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v5, "isClone"

    invoke-direct {v2, v5, v3, v6}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 368
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "transferGroup"

    .line 370
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 371
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    const-string v4, "dateCreated"

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 372
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    const-string v4, "savePath"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 373
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    const-string v4, "isSharedOnWeb"

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 374
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    const-string v1, "writablePath"

    .line 376
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/database/SQLValues;->defineTable(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    move-object/from16 v4, v17

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 377
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLValues$Column;

    sget-object v3, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    move-object/from16 v4, v16

    invoke-direct {v2, v4, v3, v5}, Lcom/genonbeta/android/database/SQLValues$Column;-><init>(Ljava/lang/String;Lcom/genonbeta/android/database/SQLType;Z)V

    .line 378
    invoke-virtual {v1, v2}, Lcom/genonbeta/android/database/SQLValues$Table;->define(Lcom/genonbeta/android/database/SQLValues$Column;)Lcom/genonbeta/android/database/SQLValues$Table;

    return-object v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p3

    .line 388
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p2, "typeInsert"

    invoke-virtual {p0, p1, v0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V

    return-wide p3
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)V"
        }
    .end annotation

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->explodePerTable(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 400
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 401
    new-instance p4, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p4, p3, v0}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "typeInsert"

    invoke-virtual {p0, p1, p4, p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getDatabaseTables()Lcom/genonbeta/android/database/SQLValues;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/genonbeta/android/database/SQLQuery;->createTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "transfer"

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getDatabaseTables()Lcom/genonbeta/android/database/SQLValues;

    move-result-object v4

    const/4 v5, 0x5

    if-gt v3, v5, :cond_4a

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getDatabaseTables()Lcom/genonbeta/android/database/SQLValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1f

    .line 154
    :cond_45
    invoke-static {v2, v4}, Lcom/genonbeta/android/database/SQLQuery;->createTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues;)V

    goto/16 :goto_196

    :cond_4a
    const/4 v5, 0x6

    const-string v6, "transferAssignee"

    const-string v7, "transferGroup"

    const/4 v8, 0x1

    const-string v9, "DROP TABLE IF EXISTS `%s`"

    const/4 v10, 0x0

    if-gt v3, v5, :cond_9c

    .line 157
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/android/database/SQLValues$Table;

    .line 158
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "devices"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/genonbeta/android/database/SQLValues$Table;

    .line 159
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/genonbeta/android/database/SQLValues$Table;

    new-array v13, v8, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v5}, Lcom/genonbeta/android/database/SQLValues$Table;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v13, v8, [Ljava/lang/Object;

    .line 162
    invoke-virtual {v11}, Lcom/genonbeta/android/database/SQLValues$Table;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-static {v2, v5}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    .line 165
    invoke-static {v2, v11}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    .line 166
    invoke-static {v2, v12}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    :cond_9c
    const/16 v5, 0xa

    const/4 v11, 0x0

    if-ge v3, v5, :cond_151

    .line 179
    :try_start_a1
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genonbeta/android/database/SQLValues$Table;

    .line 180
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "divisionTransfer"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/genonbeta/android/database/SQLValues$Table;

    .line 181
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 182
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v15, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v8, v10, [Ljava/lang/String;

    invoke-direct {v15, v6, v8}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v6, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    invoke-virtual {v1, v2, v15, v6, v11}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object v6

    .line 186
    new-instance v8, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v15, v10, [Ljava/lang/String;

    invoke-direct {v8, v0, v15}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v0, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-virtual {v1, v2, v8, v0, v11}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_df
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_108

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;

    move-object/from16 v16, v12

    .line 190
    iget-wide v11, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_104

    .line 191
    iget-wide v11, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->groupId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v8, v8, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    invoke-interface {v13, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_104
    move-object/from16 v12, v16

    const/4 v11, 0x0

    goto :goto_df

    :cond_108
    move-object/from16 v16, v12

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10e
    :goto_10e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 195
    iget-wide v11, v6, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v6, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    .line 197
    iget-object v8, v6, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    if-eqz v8, :cond_10e

    .line 198
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10e

    :cond_130
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v5}, Lcom/genonbeta/android/database/SQLValues$Table;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    .line 201
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    invoke-static {v2, v5}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    move-object/from16 v12, v16

    .line 204
    invoke-static {v2, v12}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    const/4 v5, 0x0

    .line 205
    invoke-virtual {v1, v2, v14, v5, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_14c} :catch_14d

    goto :goto_151

    :catch_14d
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_151
    :goto_151
    const/16 v0, 0xb

    if-ge v3, v0, :cond_164

    .line 212
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v0

    const-string v5, "fileBookmark"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genonbeta/android/database/SQLValues$Table;

    .line 213
    invoke-static {v2, v0}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    :cond_164
    const/16 v0, 0xc

    if-ge v3, v0, :cond_196

    .line 217
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    new-array v3, v10, [Ljava/lang/String;

    invoke-direct {v0, v7, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v3, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-virtual {v4}, Lcom/genonbeta/android/database/SQLValues;->getTables()Ljava/util/HashMap;

    move-result-object v3

    .line 220
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genonbeta/android/database/SQLValues$Table;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v3}, Lcom/genonbeta/android/database/SQLValues$Table;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 222
    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    invoke-static {v2, v3}, Lcom/genonbeta/android/database/SQLQuery;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLValues$Table;)V

    .line 225
    invoke-virtual {v1, v2, v0, v5, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    :cond_196
    :goto_196
    return-void
.end method

.method public remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I
    .registers 5

    .line 407
    invoke-super {p0, p1, p2}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;)I

    move-result v0

    const-string v1, "typeRemove"

    .line 409
    invoke-virtual {p0, p1, p2, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V

    return v0
.end method

.method public remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)V"
        }
    .end annotation

    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->explodePerTable(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 421
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 422
    new-instance p4, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p4, p3, v0}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "typeRemove"

    invoke-virtual {p0, p1, p4, p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    return-void
.end method

.method public removeAsynchronous(Landroid/app/Activity;Lcom/genonbeta/android/database/DatabaseObject;)V
    .registers 4

    .line 427
    new-instance v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;

    invoke-direct {v0, p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase$1;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/android/database/DatabaseObject;)V

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAsynchronous(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 451
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 454
    :cond_9
    new-instance v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;

    invoke-direct {v0, p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/Runnable;)V

    const p2, 0x7f1100ff

    .line 464
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase$3;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p2

    .line 465
    invoke-virtual {p2, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public removeAsynchronous(Landroid/app/Activity;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "+",
            "Lcom/genonbeta/android/database/DatabaseObject;",
            ">;)V"
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;

    invoke-direct {v0, p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase$2;-><init>(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->removeAsynchronous(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I
    .registers 5

    .line 471
    invoke-super {p0, p1, p2, p3}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I

    move-result p3

    const-string v0, "typeUpdate"

    .line 473
    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V

    return p3
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/genonbeta/android/database/DatabaseObject<",
            "TT;>;>(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;",
            "TT;)V"
        }
    .end annotation

    .line 481
    invoke-super {p0, p1, p2, p3, p4}, Lcom/genonbeta/android/database/SQLiteDatabase;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/genonbeta/android/database/SQLiteDatabase$ProgressUpdater;Ljava/lang/Object;)V

    .line 483
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->explodePerTable(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 485
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 486
    new-instance p4, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p4, p3, v0}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "typeUpdate"

    invoke-virtual {p0, p1, p4, p3}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->broadcast(Landroid/database/sqlite/SQLiteDatabase;Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    return-void
.end method
