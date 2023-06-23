.class public Lcom/genonbeta/TrebleShot/util/DynamicNotification;
.super Landroidx/core/app/NotificationCompat$Builder;
.source "DynamicNotification.java"


# instance fields
.field private mManager:Landroidx/core/app/NotificationManagerCompat;

.field private mNotificationId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;Ljava/lang/String;I)V
    .registers 5

    .line 20
    invoke-direct {p0, p1, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mManager:Landroidx/core/app/NotificationManagerCompat;

    .line 22
    iput p4, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mNotificationId:I

    return-void
.end method


# virtual methods
.method public cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-object p0
.end method

.method public getNotificationId()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mNotificationId:I

    return v0
.end method

.method public setNotificationId(I)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 2

    .line 38
    iput p1, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mNotificationId:I

    return-object p0
.end method

.method public show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mNotificationId:I

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-object p0
.end method

.method public updateProgress(IIZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 4

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mManager:Landroidx/core/app/NotificationManagerCompat;

    iget p2, p0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->mNotificationId:I

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-object p0
.end method
