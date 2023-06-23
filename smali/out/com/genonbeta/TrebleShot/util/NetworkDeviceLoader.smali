.class public Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;
.super Ljava/lang/Object;
.source "NetworkDeviceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredErrorListener;,
        Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(ZLcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$1;-><init>(Ljava/lang/String;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V

    if-eqz p0, :cond_10

    .line 100
    const-class p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-static {p1, p0, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/Class;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    return-object p0

    .line 102
    :cond_10
    invoke-static {p1, v0}, Lcom/genonbeta/TrebleShot/util/CommunicationBridge;->connect(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client$ConnectionHandler;)Lcom/genonbeta/TrebleShot/util/CommunicationBridge$Client;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static load(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    :try_start_1
    invoke-static {v0, p0, p1, p2}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->load(ZLcom/genonbeta/TrebleShot/database/AccessDatabase;Ljava/lang/String;Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader$OnDeviceRegisteredListener;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/net/ConnectException;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public static loadFrom(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lorg/json/JSONObject;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "deviceInfo"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appInfo"

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 112
    new-instance v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    const-string v2, "deviceId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 115
    :try_start_17
    invoke-virtual {p0, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    nop

    :goto_1c
    const-string v2, "brand"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->brand:Ljava/lang/String;

    const-string v2, "model"

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    const-string v2, "user"

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->lastUsageTime:J

    const-string v2, "versionCode"

    .line 123
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const-string v2, "versionName"

    .line 124
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    .line 126
    iget-object p1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x20

    if-le p1, v2, :cond_5f

    .line 127
    iget-object p1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    .line 129
    :cond_5f
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->saveProfilePicture(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;)Z

    return-object v1
.end method

.method public static loadProfilePictureFrom(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static loadProfilePictureFrom(Lorg/json/JSONObject;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "devicePicture"

    .line 136
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 137
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->loadProfilePictureFrom(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 139
    :cond_11
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Ljava/lang/String;)Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;
    .registers 4

    .line 31
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;

    invoke-direct {v0, p2}, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p0, p1, v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    return-object v0
.end method

.method public static processConnection(Lcom/genonbeta/TrebleShot/database/AccessDatabase;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 6

    .line 41
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_7

    .line 43
    :catch_4
    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->applyAdapterName(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V

    .line 46
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->lastCheckedDate:J

    .line 47
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    iput-object p1, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    .line 49
    new-instance p1, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "deviceConnection"

    invoke-direct {p1, v2, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->deviceId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p2, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "deviceId=? AND adapterName =? AND ipAddress != ?"

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->remove(Lcom/genonbeta/android/database/SQLQuery$Select;)I

    .line 55
    invoke-virtual {p0, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->publish(Lcom/genonbeta/android/database/DatabaseObject;)V

    return-void
.end method

.method public static saveProfilePicture(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;Lorg/json/JSONObject;)Z
    .registers 3

    .line 150
    :try_start_0
    invoke-static {p2}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->loadProfilePictureFrom(Lorg/json/JSONObject;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;->saveProfilePicture(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;[B)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public static saveProfilePicture(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice;[B)Z
    .registers 5

    .line 160
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 164
    :try_start_8
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->generatePictureId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 165
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, p1, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1a} :catch_21
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_1c

    const/4 p0, 0x1

    return p0

    :catch_1c
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_21
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_31

    .line 176
    :cond_26
    const-class p0, Lcom/genonbeta/TrebleShot/util/NetworkDeviceLoader;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bitmap was null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return v1
.end method

.method public static showPictureIntoView(Lcom/genonbeta/TrebleShot/object/NetworkDevice;Landroid/widget/ImageView;Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;)V
    .registers 5

    .line 184
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 187
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->generatePictureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 190
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/GlideApp;->with(Landroid/view/View;)Lcom/genonbeta/TrebleShot/GlideRequests;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequests;->asBitmap()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p0

    .line 192
    invoke-virtual {p0, v0}, Lcom/genonbeta/TrebleShot/GlideRequest;->load(Ljava/io/File;)Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/GlideRequest;->circleCrop()Lcom/genonbeta/TrebleShot/GlideRequest;

    move-result-object p0

    .line 194
    invoke-virtual {p0, p1}, Lcom/genonbeta/TrebleShot/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void

    .line 200
    :cond_28
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
