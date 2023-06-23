.class public Lcom/genonbeta/TrebleShot/util/TransferUtils;
.super Ljava/lang/Object;
.source "TransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final TASK_START_TRANSFER_WITH_OVERVIEW:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/genonbeta/TrebleShot/util/TransferUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/util/TransferUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeConnection(Landroidx/fragment/app/FragmentActivity;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;)V
    .registers 7

    .line 52
    new-instance v0, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;

    new-instance v1, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/genonbeta/TrebleShot/util/TransferUtils$1;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/TransferUtils$ConnectionUpdatedListener;)V

    invoke-direct {v0, p0, p3, v1}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;-><init>(Landroid/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/callback/OnDeviceSelectedListener;)V

    .line 64
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/dialog/ConnectionChooserDialog;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static createTransferSelection(JLjava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 9

    .line 75
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "groupId"

    aput-object v4, v3, v1

    const-string v4, "deviceId"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "%s = ? AND %s = ?"

    .line 76
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    .line 79
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    aput-object p2, v2, v5

    .line 76
    invoke-virtual {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p0

    return-object p0
.end method

.method public static createTransferSelection(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;Z)Lcom/genonbeta/android/database/SQLQuery$Select;
    .registers 12

    .line 84
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s = ? AND %s = ? AND %s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_19

    const-string p4, "="

    goto :goto_1b

    :cond_19
    const-string p4, "!="

    :goto_1b
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ?"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "groupId"

    aput-object v4, v3, v1

    const-string v4, "deviceId"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "flag"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 85
    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v2, v2, [Ljava/lang/String;

    .line 89
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    aput-object p2, v2, v5

    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v6

    .line 85
    invoke-virtual {v0, p4, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p0

    return-object p0
.end method

.method public static createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const/4 p0, 0x2

    aput-object p3, v0, p0

    const-string p0, "%d_%s_%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static fetchFirstTransfer(Landroid/content/Context;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/object/TransferObject;
    .registers 8

    .line 135
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p0

    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    .line 139
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v1

    .line 140
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const-string p1, "type=? AND groupId=?"

    .line 137
    invoke-virtual {v0, p1, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    const-string v0, "directory"

    aput-object v0, p3, v1

    const-string v0, "name"

    aput-object v0, p3, p2

    const-string p2, "`%s` ASC, `%s` ASC"

    .line 141
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object p0

    if-nez p0, :cond_40

    const/4 p0, 0x0

    goto :goto_46

    .line 145
    :cond_40
    new-instance p1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(Lcom/genonbeta/android/database/CursorItem;)V

    move-object p0, p1

    :goto_46
    return-object p0
.end method

.method public static fetchValidTransfer(Landroid/content/Context;JLcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/object/TransferObject;
    .registers 8

    .line 153
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p0

    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 158
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v1

    .line 159
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 160
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v2, p3

    const-string p1, "type=? AND groupId=? AND flag=?"

    .line 155
    invoke-virtual {v0, p1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "directory"

    aput-object v0, p3, v1

    const-string v0, "name"

    aput-object v0, p3, p2

    const-string p2, "`%s` ASC, `%s` ASC"

    .line 161
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object p0

    if-nez p0, :cond_49

    const/4 p0, 0x0

    goto :goto_4f

    .line 165
    :cond_49
    new-instance p1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(Lcom/genonbeta/android/database/CursorItem;)V

    move-object p0, p1

    :goto_4f
    return-object p0
.end method

.method public static fetchValidTransfer(Landroid/content/Context;JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/object/TransferObject;
    .registers 9

    .line 174
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p0

    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transfer"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 180
    invoke-virtual {p4}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v1

    .line 181
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    sget-object p3, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 183
    invoke-virtual {p3}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, v2, p4

    const-string p3, "type=? AND groupId=? AND deviceId=? AND flag=?"

    .line 176
    invoke-virtual {v0, p3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p4, "directory"

    aput-object p4, p1, v1

    const-string p4, "name"

    aput-object p4, p1, p2

    const-string p2, "`%s` ASC, `%s` ASC"

    .line 184
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getFirstFromTable(Lcom/genonbeta/android/database/SQLQuery$Select;)Lcom/genonbeta/android/database/CursorItem;

    move-result-object p0

    if-nez p0, :cond_4c

    const/4 p0, 0x0

    goto :goto_52

    .line 188
    :cond_4c
    new-instance p1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    invoke-direct {p1, p0}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(Lcom/genonbeta/android/database/CursorItem;)V

    move-object p0, p1

    :goto_52
    return-object p0
.end method

.method public static getFirstAssignee(Lcom/genonbeta/TrebleShot/database/AccessDatabase;J)Lcom/genonbeta/TrebleShot/object/ShowingAssignee;
    .registers 7

    .line 94
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transferAssignee"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 95
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "groupId=?"

    invoke-virtual {v0, p1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 97
    const-class p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    new-instance v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$2;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$2;-><init>()V

    .line 98
    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2c

    const/4 p0, 0x0

    goto :goto_32

    :cond_2c
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    :goto_32
    return-object p0
.end method

.method public static getFirstAssignee(Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;Lcom/genonbeta/TrebleShot/database/AccessDatabase;J)Lcom/genonbeta/TrebleShot/object/ShowingAssignee;
    .registers 4

    .line 120
    invoke-static {p1, p2, p3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->getFirstAssignee(Lcom/genonbeta/TrebleShot/database/AccessDatabase;J)Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    move-result-object p1

    if-nez p1, :cond_15

    const p1, 0x7f1100f0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 123
    invoke-interface {p0, p1, p2}, Lcom/genonbeta/android/framework/ui/callback/SnackbarSupport;->createSnackbar(I[Ljava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    const/4 p0, 0x0

    return-object p0

    :cond_15
    return-object p1
.end method

.method public static loadAssigneeList(Lcom/genonbeta/android/database/SQLiteDatabase;J)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genonbeta/android/database/SQLiteDatabase;",
            "J)",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/object/ShowingAssignee;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "transferAssignee"

    invoke-direct {v0, v3, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 196
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "groupId=?"

    invoke-virtual {v0, p1, v2}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 198
    const-class p2, Lcom/genonbeta/TrebleShot/object/ShowingAssignee;

    new-instance v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$3;

    invoke-direct {v0}, Lcom/genonbeta/TrebleShot/util/TransferUtils$3;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/genonbeta/android/database/SQLiteDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;Lcom/genonbeta/android/database/SQLiteDatabase$CastQueryListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static pauseTransfer(Landroid/content/Context;JLjava/lang/String;)V
    .registers 6

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraGroupId"

    .line 230
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extraDeviceId"

    .line 231
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 233
    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static pauseTransfer(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V
    .registers 5

    .line 223
    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    if-nez p2, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    iget-object p1, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;->deviceId:Ljava/lang/String;

    :goto_8
    invoke-static {p0, v0, v1, p1}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->pauseTransfer(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public static recoverIncomingInterruptions(Landroid/content/Context;J)V
    .registers 8

    .line 361
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 363
    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->PENDING:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p0

    new-instance v1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "transfer"

    invoke-direct {v1, v4, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 369
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->INTERRUPTED:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 370
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    sget-object p1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 371
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "groupId=? AND flag=? AND type=?"

    .line 366
    invoke-virtual {v1, p1, v3}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->update(Lcom/genonbeta/android/database/SQLQuery$Select;Landroid/content/ContentValues;)I

    return-void
.end method

.method public static requestStartSending(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 13

    .line 241
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 243
    new-instance v7, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/genonbeta/TrebleShot/util/TransferUtils$4;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;Lcom/genonbeta/TrebleShot/object/TransferGroup;Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;)V

    const p1, 0x7f1100c3

    .line 355
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    .line 356
    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method

.method public static startTransfer(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    .registers 5

    if-eqz p0, :cond_10

    .line 447
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 448
    new-instance v0, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/genonbeta/TrebleShot/util/TransferUtils$6;-><init>(Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Lcom/genonbeta/TrebleShot/object/TransferGroup;)V

    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public static startTransferWithTest(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V
    .registers 11

    .line 378
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 380
    new-instance v6, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;-><init>(Lcom/genonbeta/TrebleShot/app/Activity;Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/TransferGroup$Assignee;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Landroid/content/Context;)V

    const p1, 0x7f1100c4

    .line 440
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/genonbeta/TrebleShot/util/TransferUtils$5;->setTitle(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/genonbeta/TrebleShot/service/WorkerService$RunningTask;->run(Landroid/content/Context;)Z

    return-void
.end method
