.class public Lcom/genonbeta/TrebleShot/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

.field private static mDefaultLocalPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

.field private static mDefaultPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

.field private static mUniqueNumber:I

.field private static mViewingPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/genonbeta/TrebleShot/util/AppUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    sput v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mUniqueNumber:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAdapterName(Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 67
    const-class p0, Lcom/genonbeta/TrebleShot/util/AppUtils;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Connection should be provided with IP address"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v0, 0x1

    .line 71
    sget-object v1, Lcom/genonbeta/TrebleShot/config/AppConfig;->DEFAULT_DISABLED_INTERFACES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getInterfaces(Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/util/AddressedInterface;

    .line 74
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getAssociatedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getAddressPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->ipAddress:Ljava/lang/String;

    .line 75
    invoke-static {v3}, Lcom/genonbeta/TrebleShot/util/NetworkUtils;->getAddressPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 76
    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    return-void

    :cond_46
    const-string v0, "unk0"

    .line 81
    iput-object v0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    return-void
.end method

.method public static applyDeviceToJSON(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    .line 87
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 90
    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->deviceId:Ljava/lang/String;

    const-string v4, "deviceId"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->brand:Ljava/lang/String;

    const-string v4, "brand"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v3, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :try_start_2a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v4, "profilePicture"

    .line 97
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 99
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p0, "devicePicture"

    .line 100
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4e} :catch_4e

    .line 105
    :catch_4e
    iget p0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const-string v3, "versionCode"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    iget-object p0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;

    const-string v0, "versionName"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appInfo"

    .line 108
    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "deviceInfo"

    .line 109
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static checkRunningConditions(Landroid/content/Context;)Z
    .registers 3

    .line 135
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getRequiredPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    .line 136
    iget-object v1, v1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;->permission:Ljava/lang/String;

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static createFeedbackIntent(Landroid/app/Activity;)V
    .registers 6

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thekdcorp@gmail.com"

    aput-object v4, v2, v3

    const-string v3, "android.intent.extra.EMAIL"

    .line 116
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f110153

    .line 117
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->createLog(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 123
    :try_start_2e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.STREAM"

    .line 124
    invoke-static {p0, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getSecureUri(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_40
    const v1, 0x7f110047

    .line 130
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static createLog(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;
    .registers 9

    .line 144
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    const-string v1, "trebleshot_log.txt"

    const/4 v2, 0x1

    .line 145
    invoke-static {v0, v1, v2}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getUniqueFileName(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v0, v3, v1}, Lcom/genonbeta/android/framework/io/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v0

    const-string v4, "activity"

    .line 147
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 150
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    :try_start_1c
    const-string v5, "logcat -d -v threadtime *:*"

    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 156
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 158
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    const-string v7, "w"

    invoke-virtual {p0, v5, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_89

    .line 165
    :cond_44
    :goto_44
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 166
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 167
    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 169
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_44

    .line 174
    :cond_82
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 175
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    return-object v0

    .line 161
    :cond_89
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Could not open %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_9a} :catch_9a

    :catch_9a
    return-object v3
.end method

.method public static getBuildFlavor()Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;
    .registers 2

    :try_start_0
    const-string v0, "googlePlay"

    .line 209
    invoke-static {v0}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 211
    :catch_7
    sget-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->TAG:Ljava/lang/String;

    const-string v1, "Current build flavor googlePlay is not specified in the vocab. Is this a custom build?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->unknown:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    return-object v0
.end method

.method public static getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;
    .registers 2

    .line 200
    sget-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    if-nez v0, :cond_b

    .line 201
    new-instance v0, Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    .line 203
    :cond_b
    sget-object p0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDatabase:Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    return-object p0
.end method

.method public static getDefaultIconBuilder(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;
    .registers 4

    .line 187
    invoke-static {}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable;->builder()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 190
    invoke-interface {v1, v2}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;->firstLettersOnly(Z)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    .line 191
    invoke-interface {v1, v2}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;->textMaxLength(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    const v2, 0x7f0300aa

    .line 192
    invoke-static {p0, v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;->textColor(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;

    move-result-object v1

    const v2, 0x7f0300b9

    .line 193
    invoke-static {p0, v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getReference(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-interface {v1, p0}, Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;->shapeColor(I)Lcom/genonbeta/TrebleShot/graphics/drawable/TextDrawable$IConfigBuilder;

    return-object v0
.end method

.method public static getDefaultLocalPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;
    .registers 3

    .line 246
    sget-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDefaultLocalPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    if-nez v0, :cond_17

    .line 247
    new-instance v0, Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDefaultLocalPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    .line 249
    new-instance v1, Lcom/genonbeta/TrebleShot/util/AppUtils$3;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/AppUtils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->setOnPreferenceUpdateListener(Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;)V

    .line 259
    :cond_17
    sget-object p0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDefaultLocalPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    return-object p0
.end method

.method public static getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;
    .registers 4

    .line 219
    sget-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDefaultPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    if-nez v0, :cond_24

    .line 220
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    const/4 v1, 0x1

    const-string v2, "__default"

    invoke-direct {v0, p0, v2, v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v1, Lcom/genonbeta/TrebleShot/util/AppUtils$1;

    invoke-direct {v1, p0}, Lcom/genonbeta/TrebleShot/util/AppUtils$1;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, v1}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences;->setUpdateListener(Lcom/genonbeta/android/framework/preference/DbSharablePreferences$AsynchronousUpdateListener;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/genonbeta/android/framework/preference/SuperPreferences;

    invoke-direct {v1, v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDefaultPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    .line 231
    new-instance v0, Lcom/genonbeta/TrebleShot/util/AppUtils$2;

    invoke-direct {v0, p0}, Lcom/genonbeta/TrebleShot/util/AppUtils$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->setOnPreferenceUpdateListener(Lcom/genonbeta/android/framework/preference/SuperPreferences$OnPreferenceUpdateListener;)V

    .line 241
    :cond_24
    sget-object p0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mDefaultPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    return-object p0
.end method

.method public static getDeviceSerial(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_9

    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_17

    :cond_9
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 267
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static getFriendlySSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\""

    const-string v1, ""

    .line 273
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, " "

    .line 275
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHotspotName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    const-string v2, "_"

    .line 282
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;
    .registers 4

    .line 297
    new-instance v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDeviceSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genonbeta/TrebleShot/object/NetworkDevice;-><init>(Ljava/lang/String;)V

    .line 299
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->brand:Ljava/lang/String;

    .line 300
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->model:Ljava/lang/String;

    .line 301
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->nickname:Ljava/lang/String;

    const/4 v1, 0x0

    .line 302
    iput-boolean v1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isRestricted:Z

    const/4 v2, 0x1

    .line 303
    iput-boolean v2, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->isLocalAddress:Z

    .line 306
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 308
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    .line 309
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionName:Ljava/lang/String;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 311
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_38
    return-object v0
.end method

.method public static getLocalDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 287
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p0

    const-string v0, "device_name"

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0, v0, v1}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    :cond_13
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method public static getReference(Landroid/content/Context;I)I
    .registers 5

    .line 320
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    if-lez p1, :cond_2d

    .line 327
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :cond_2d
    return v2

    .line 331
    :cond_2e
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static getRequiredPermissions(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1b

    .line 339
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    const v2, 0x7f110209

    const v3, 0x7f11020a

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_31

    .line 346
    new-instance v1, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;

    const v2, 0x7f110207

    const v3, 0x7f110208

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/genonbeta/TrebleShot/dialog/RationalePermissionRequest$PermissionRequest;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object v0
.end method

.method public static getUniqueNumber()I
    .registers 4

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    sget v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mUniqueNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mUniqueNumber:I

    add-int/2addr v1, v0

    return v1
.end method

.method public static getViewingPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;
    .registers 4

    .line 362
    sget-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mViewingPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    if-nez v0, :cond_12

    .line 363
    new-instance v0, Lcom/genonbeta/android/framework/preference/SuperPreferences;

    const/4 v1, 0x0

    const-string v2, "sorting_settings"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mViewingPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    .line 365
    :cond_12
    sget-object p0, Lcom/genonbeta/TrebleShot/util/AppUtils;->mViewingPreferences:Lcom/genonbeta/android/framework/preference/SuperPreferences;

    return-object p0
.end method

.method public static isLatestChangeLogSeen(Landroid/content/Context;)Z
    .registers 6

    .line 370
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v0

    .line 371
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object p0

    const-string v1, "changelog_seen_version"

    const/4 v2, -0x1

    .line 372
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "show_changelog_dialog"

    const/4 v3, 0x1

    .line 373
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "previously_migrated_version"

    .line 375
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget p0, p0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    if-eq p0, v1, :cond_26

    if-nez v2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :cond_26
    :goto_26
    return v3
.end method

.method public static publishLatestChangelogSeen(Landroid/content/Context;)V
    .registers 3

    .line 382
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDevice(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/object/NetworkDevice;

    move-result-object v0

    .line 384
    invoke-static {p0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/genonbeta/android/framework/preference/SuperPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget v0, v0, Lcom/genonbeta/TrebleShot/object/NetworkDevice;->versionNumber:I

    const-string v1, "changelog_seen_version"

    .line 385
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 386
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static quickAction(Ljava/lang/Object;Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 391
    invoke-interface {p1, p0}, Lcom/genonbeta/TrebleShot/util/AppUtils$QuickActions;->onQuickActions(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 422
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d

    .line 424
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_d
    return-void
.end method

.method public static startWebShareActivity(Landroid/content/Context;Z)V
    .registers 4

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/activity/WebShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    const-string v1, "extraStartRequired"

    .line 414
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    :cond_f
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static toggleDeviceScanning(Landroid/content/Context;)Z
    .registers 3

    .line 397
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDeviceScanner()Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->isScannerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "genonbeta.intent.action.SCAN_DEVICES"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 398
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0

    .line 404
    :cond_1c
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/DeviceScannerService;->getDeviceScanner()Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;

    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/util/NetworkDeviceScanner;->interrupt()Z

    const/4 p0, 0x0

    return p0
.end method
