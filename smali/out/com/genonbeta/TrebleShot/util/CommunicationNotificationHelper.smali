.class public Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;
.super Ljava/lang/Object;
.source "CommunicationNotificationHelper.java"


# static fields
.field public static final SERVICE_COMMUNICATION_FOREGROUND_NOTIFICATION_ID:I = 0x1


# instance fields
.field private mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;


# direct methods
.method public constructor <init>(Lcom/genonbeta/TrebleShot/util/NotificationUtils;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    return-void
.end method


# virtual methods
.method public getCommunicationServiceNotification(ZZZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 11

    .line 46
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-string v3, "tsLowPriority"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_21

    .line 50
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f110254

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_2c

    const-string p3, " - "

    .line 53
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_2c
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f11016c

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f070101

    .line 57
    invoke-virtual {v0, p3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 59
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11016d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const v1, 0x7f0700b2

    .line 61
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_6a

    const p1, 0x7f11008e

    goto :goto_6d

    :cond_6a
    const p1, 0x7f11008f

    :goto_6d
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_SEAMLESS_MODE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 61
    invoke-virtual {p3, v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.genonbeta.TrebleShot.action.END_SESSION"

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 63
    invoke-static {p3, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p2, :cond_e5

    const p1, 0x7f0700a3

    .line 67
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f11006b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.genonbeta.TrebleShot.transaction.action.REVOKE_ACCESS_PIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p3, v1, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    :cond_e5
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    return-object v0
.end method

.method public notifyClipboardRequest(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/TextStreamObject;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 13

    .line 188
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    iget-wide v1, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    const-string v3, "tsHighPriority"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.genonbeta.TrebleShot.action.CLIPBOARD"

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    const-string v4, "extraTextId"

    .line 192
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->getNotificationId()I

    move-result v2

    const-string v3, "notificationId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 195
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/genonbeta/TrebleShot/activity/TextEditorActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v4, "extraClipboardAccepted"

    const/4 v5, 0x1

    .line 199
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 200
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v7

    invoke-static {v4, v7, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v7

    invoke-static {v4, v7, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "genonbeta.intent.action.EDIT_TEXT"

    .line 206
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-wide v7, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->id:J

    const-string v9, "clipboardId"

    .line 207
    invoke-virtual {v4, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const/high16 v7, 0x10000000

    .line 208
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v4, 0x1080082

    .line 211
    invoke-virtual {v0, v4}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 212
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f110135

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 213
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f110230

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/TextStreamObject;->text:Ljava/lang/String;

    .line 215
    invoke-virtual {v7, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 216
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 214
    invoke-virtual {v4, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 217
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v4

    invoke-static {p2, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x1040001

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v2, 0x7f0700ac

    invoke-virtual {p1, v2, p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x1040009

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0700af

    invoke-virtual {p1, v1, p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1101fc

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 226
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyConnectionError(Lcom/genonbeta/TrebleShot/object/TransferInstance;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 10

    .line 307
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object v1

    iget-wide v1, v1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p2}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v1

    const-string p2, "tsHighPriority"

    .line 307
    invoke-virtual {v0, v1, v2, p2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p2

    .line 310
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getDevice()Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getConnection()Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f1100cc

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_81

    const/4 v1, -0x1

    .line 313
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, -0x7fd654ab

    if-eq v2, v5, :cond_5c

    const v5, 0x5c95c86f

    if-eq v2, v5, :cond_52

    goto :goto_65

    :cond_52
    const-string v2, "notFound"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_65

    const/4 v1, 0x1

    goto :goto_65

    :cond_5c
    const-string v2, "notAllowed"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_65

    const/4 v1, 0x0

    :cond_65
    :goto_65
    if-eqz v1, :cond_76

    if-eq v1, v4, :cond_6a

    goto :goto_81

    .line 318
    :cond_6a
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1100f4

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 315
    :cond_76
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1100f1

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_81
    :goto_81
    const p3, 0x7f07009b

    .line 321
    invoke-virtual {p2, p3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 322
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 323
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 324
    invoke-virtual {p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 325
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 326
    invoke-virtual {p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 327
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 328
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 329
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferInstance;->getGroup()Lcom/genonbeta/TrebleShot/object/TransferGroup;

    move-result-object p1

    iget-wide v4, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string p1, "extraGroupId"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 327
    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 331
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyConnectionRequest(Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 11

    .line 85
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "tsHighPriority"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/genonbeta/TrebleShot/receiver/DialogEventReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.genonbeta.TrebleShot.action.IP"

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v4, "extraDeviceId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->getNotificationId()I

    move-result v3

    const-string v4, "notificationId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v4, "extraAccepted"

    const/4 v5, 0x1

    .line 96
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v5, 0x0

    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v6

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v6

    invoke-static {v4, v6, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f07009b

    .line 102
    invoke-virtual {v0, v4}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110172

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 104
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f11012e

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 105
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v6

    invoke-static {v4, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f11001e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0700ac

    invoke-virtual {p1, v4, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0700af

    invoke-virtual {p1, v2, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 113
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyFileReceived(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/android/framework/io/DocumentFile;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 14

    .line 231
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 232
    invoke-static {v1, v2, v3, v4}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v1

    const-string v3, "tsHighPriority"

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    .line 234
    iget-object v1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->builder:Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$ParentBuilder;->getTransferProgress()Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;

    move-result-object v1

    const v2, 0x1080082

    .line 237
    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 238
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v2, 0x1

    .line 239
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 240
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 241
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 242
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredByte()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTimeElapsed()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->getFriendlyElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f1101fd

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 244
    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredFileCount()I

    move-result p2

    const-string v3, "filePath"

    if-eq p2, v2, :cond_b6

    .line 246
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0005

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredFileCount()I

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/genonbeta/CoolSocket/CoolTransfer$TransferProgress;->getTransferredFileCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {p1, p2, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-virtual {p3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p3

    .line 247
    invoke-static {p2, v1, p3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_107

    .line 251
    :cond_b6
    :try_start_b6
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->currentFile:Lcom/genonbeta/android/framework/io/DocumentFile;

    invoke-static {p2, v1}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getOpenIntent(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/content/Intent;

    move-result-object p2

    .line 252
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v2

    invoke-static {v1, v2, p2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_cf} :catch_cf

    .line 256
    :catch_cf
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, p1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x7f0700cc

    .line 258
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110080

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v8, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    invoke-virtual {p3}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v5, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p3

    .line 259
    invoke-static {v2, v4, p3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 258
    invoke-virtual {p1, p2, v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 263
    :goto_107
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyFileTransaction(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-nez v0, :cond_e6

    .line 155
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 158
    sget-object v1, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    iget-object v2, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v2, v2, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {v1, v2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 160
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v2

    iget-wide v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v5, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iget-object v6, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v6, v6, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 161
    invoke-static {v3, v4, v5, v6}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v3

    const-string v5, "tsLowPriority"

    .line 160
    invoke-virtual {v2, v3, v4, v5}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v2

    iput-object v2, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 163
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB"

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v3, v3, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    const-string v5, "extraRequestId"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    iget-wide v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-string v5, "extraGroupId"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 168
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    const-string v4, "extraDeviceId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->getNotificationId()I

    move-result v3

    const-string v4, "notificationId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    if-eqz v1, :cond_72

    const v4, 0x1080081

    goto :goto_75

    :cond_72
    const v4, 0x1080088

    :goto_75
    invoke-virtual {v3, v4}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 172
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_83

    const v6, 0x7f1101fe

    goto :goto_86

    :cond_83
    const v6, 0x7f110218

    :goto_86
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 173
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v4

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 175
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-wide v7, v7, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    .line 176
    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    .line 174
    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 177
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f0700af

    .line 178
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_d0

    const v1, 0x7f110028

    goto :goto_d3

    :cond_d0
    const v1, 0x7f110029

    :goto_d3
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v5

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 181
    :cond_e6
    iget-object v0, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v1, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 183
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->notification:Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    return-object p1
.end method

.method public notifyPrepareFiles(Lcom/genonbeta/TrebleShot/object/TransferGroup;Lcom/genonbeta/TrebleShot/object/NetworkDevice;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 11

    .line 336
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    sget-object v3, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->INCOMING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 337
    invoke-static {v1, v2, p2, v3}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v1

    const-string p2, "tsLowPriority"

    .line 336
    invoke-virtual {v0, v1, v2, p2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p2

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.action.CANCEL_INDEXING"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->getNotificationId()I

    move-result v1

    const-string v2, "notificationId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    const-string v3, "extraGroupId"

    .line 343
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x1080081

    .line 347
    invoke-virtual {p2, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1101f1

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f110210

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 350
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f110027

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0700af

    invoke-virtual {v1, v5, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v2

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 353
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-wide v6, p1, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 354
    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 352
    invoke-static {v1, v2, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 356
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyReceiveError(Lcom/genonbeta/TrebleShot/object/TransferObject;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 11

    .line 287
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/TransferObject;->getId()J

    move-result-wide v1

    const-string v3, "tsHighPriority"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    const v1, 0x7f07009b

    .line 289
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110191

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f1100d9

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 296
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-wide v7, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    const-string v5, "extraGroupId"

    .line 297
    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    iget-wide v7, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    const-string v5, "extraRequestId"

    .line 298
    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 299
    invoke-virtual {v5}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "extraRequestType"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->deviceId:Ljava/lang/String;

    const-string v5, "extraDeviceId"

    .line 300
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 295
    invoke-static {v2, v3, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 302
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyReceiveError(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 9

    .line 268
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v3, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->transferObject:Lcom/genonbeta/TrebleShot/object/TransferObject;

    iget-object v4, v4, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 269
    invoke-static {v1, v2, v3, v4}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v1

    const-string v3, "tsHighPriority"

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    const v1, 0x7f07009b

    .line 272
    invoke-virtual {v0, v1}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110191

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 274
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 275
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 279
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-wide v5, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    const-string p1, "extraGroupId"

    .line 280
    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/4 v4, 0x0

    .line 278
    invoke-static {v2, v3, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 282
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyStuckThread(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 8

    .line 366
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    .line 367
    invoke-static {p1, p2, p3, p4}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v1

    const-string p4, "tsLowPriority"

    .line 366
    invoke-virtual {v0, v1, v2, p4}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p4

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.genonbeta.TrebleShot.transaction.action.CANCEL_JOB"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraGroupId"

    .line 372
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extraDeviceId"

    .line 373
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 374
    invoke-virtual {p4}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->getNotificationId()I

    move-result p2

    const-string p3, "notificationId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const p2, 0x7f07009b

    .line 376
    invoke-virtual {p4, p2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 377
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 378
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110228

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 379
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110161

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p2, v0, v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 381
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f110051

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 382
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v2

    invoke-static {v1, v2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f0700af

    .line 381
    invoke-virtual {p2, v0, p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 384
    invoke-virtual {p4}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyStuckThread(Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 5

    .line 361
    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->groupId:J

    iget-object v2, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->deviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/genonbeta/TrebleShot/service/CommunicationService$ProcessHolder;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->notifyStuckThread(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public notifyTransferRequest(Lcom/genonbeta/TrebleShot/object/TransferObject;Lcom/genonbeta/TrebleShot/object/NetworkDevice;I)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 15

    .line 118
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object v0

    iget-wide v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    iget-object v3, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->type:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 119
    invoke-static {v1, v2, v3, v4}, Lcom/genonbeta/TrebleShot/util/TransferUtils;->createUniqueTransferId(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)J

    move-result-wide v1

    const-string v3, "tsHighPriority"

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p3, v1, :cond_30

    .line 121
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0001

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, p3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_32

    :cond_30
    iget-object p3, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    .line 122
    :goto_32
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.genonbeta.TrebleShot.action.FILE_TRANSFER"

    .line 123
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v5, "extraDeviceId"

    .line 124
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-wide v4, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    const-string v6, "extraGroupId"

    .line 125
    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->getNotificationId()I

    move-result v4

    const-string v5, "notificationId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const-string v5, "extraAccepted"

    .line 129
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v7

    invoke-static {v5, v7, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v7

    invoke-static {v5, v7, v4, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x1080082

    .line 135
    invoke-virtual {v0, v5}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 136
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f110138

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 137
    invoke-virtual {v5, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget-object p2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 138
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 139
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v5

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/genonbeta/TrebleShot/activity/ViewTransferActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.genonbeta.TrebleShot.action.LIST_TRANSFERS"

    .line 140
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-wide v9, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    .line 141
    invoke-virtual {v7, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 139
    invoke-static {p3, v5, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x7f0700ac

    .line 144
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f110060

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x7f0700af

    .line 145
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f110062

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 149
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object p1

    return-object p1
.end method

.method public showToast(I)V
    .registers 4

    .line 394
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(II)V
    .registers 4

    .line 404
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4

    .line 389
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .registers 4

    .line 399
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/CommunicationNotificationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
