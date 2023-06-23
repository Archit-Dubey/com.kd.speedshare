.class public abstract Lcom/genonbeta/TrebleShot/app/Service;
.super Landroid/app/Service;
.source "Service.java"


# instance fields
.field private mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;
    .registers 2

    .line 19
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationUtils()Lcom/genonbeta/TrebleShot/util/NotificationUtils;
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Service;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    if-nez v0, :cond_17

    .line 30
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Service;->getDatabase()Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/app/Service;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/app/Service;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 32
    :cond_17
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/app/Service;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    return-object v0
.end method
