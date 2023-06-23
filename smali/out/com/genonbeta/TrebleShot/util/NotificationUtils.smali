.class public Lcom/genonbeta/TrebleShot/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field public static final NOTIFICATION_CHANNEL_HIGH:Ljava/lang/String; = "tsHighPriority"

.field public static final NOTIFICATION_CHANNEL_LOW:Ljava/lang/String; = "tsLowPriority"

.field public static final TAG:Ljava/lang/String; = "NotificationUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field private mManager:Landroidx/core/app/NotificationManagerCompat;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mManager:Landroidx/core/app/NotificationManagerCompat;

    .line 37
    iput-object p2, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    .line 38
    iput-object p3, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    .line 40
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_5c

    const-string p2, "notification"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 43
    new-instance p2, Landroid/app/NotificationChannel;

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f1101e6

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    const-string v1, "tsHighPriority"

    invoke-direct {p2, v1, p3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 45
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "notification_light"

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 46
    iget-object p3, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "notification_vibrate"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 47
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 49
    new-instance p2, Landroid/app/NotificationChannel;

    iget-object p3, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f1101e7

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    const-string v1, "tsLowPriority"

    invoke-direct {p2, v1, p3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_5c
    return-void
.end method


# virtual methods
.method public buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    .registers 10

    .line 57
    new-instance v0, Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, p1, v3

    if-lez v5, :cond_15

    const-wide/32 v3, 0x186a0

    div-long/2addr p1, v3

    :cond_15
    long-to-int p2, p1

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;-><init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;Ljava/lang/String;I)V

    return-object v0
.end method

.method public cancel(I)Lcom/genonbeta/TrebleShot/util/NotificationUtils;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    return-object v0
.end method

.method public getManager()Landroidx/core/app/NotificationManagerCompat;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mManager:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method public getNotificationSettings()I
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notification_sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "notification_vibrate"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 86
    :goto_17
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "notification_light"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x4

    :cond_22
    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method
