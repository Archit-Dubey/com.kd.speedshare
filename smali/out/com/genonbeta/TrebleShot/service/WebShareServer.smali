.class public Lcom/genonbeta/TrebleShot/service/WebShareServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "WebShareServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genonbeta/TrebleShot/service/WebShareServer$Tools;,
        Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;,
        Lcom/genonbeta/TrebleShot/service/WebShareServer$BoundRunner;
    }
.end annotation


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mContext:Landroid/content/Context;

.field private mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p2}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 85
    iput-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mAssetManager:Landroid/content/res/AssetManager;

    .line 87
    new-instance p2, Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    .line 88
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDefaultPreferences(Landroid/content/Context;)Lcom/genonbeta/android/framework/preference/SuperPreferences;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;-><init>(Landroid/content/Context;Lcom/genonbeta/TrebleShot/database/AccessDatabase;Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/genonbeta/TrebleShot/service/WebShareServer;)Landroid/content/Context;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static applyPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    .line 532
    :goto_a
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 533
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 534
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_a

    :cond_2a
    const/4 p0, -0x1

    if-le v1, p0, :cond_3a

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v1, p0, :cond_3a

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 542
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFieldPattern()Ljava/util/regex/Pattern;
    .registers 1

    const-string v0, "\\$\\{([a-zA-Z_]+)\\}"

    .line 549
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 831
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 832
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method private varargs makeContent(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "content"

    .line 482
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object p2, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "action_layout"

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    array-length p2, p4

    const/4 p3, 0x0

    :goto_1c
    if-ge p3, p2, :cond_31

    aget-object v2, p4, p3

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2b

    const-string v3, "/"

    .line 487
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1c

    .line 492
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "actionUrl"

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->getFieldPattern()Ljava/util/regex/Pattern;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".html"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->readPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->applyPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private makeNotFoundTemplate(II)Ljava/lang/String;
    .registers 5

    .line 499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 500
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "detail"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->getFieldPattern()Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "layout_not_found.html"

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->readPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->applyPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 509
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 510
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v1, 0x7f110153

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "%s - %s"

    .line 513
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "title"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/image/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "header_logo"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "header"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "title_header"

    .line 516
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "main_content"

    .line 517
    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "help_icon"

    const-string p2, "/image/help-circle.svg"

    .line 518
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const p2, 0x7f11004e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "help_alt"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getLocalDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "username"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const p2, 0x7f11014b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "footer_text"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->getFieldPattern()Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "home.html"

    invoke-direct {p0, p2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->readPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->applyPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mAssetManager:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webshare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private readPage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 559
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    :try_start_5
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 565
    :goto_9
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 566
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 567
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_9

    :catch_17
    move-exception p1

    .line 570
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    :cond_1b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private serveAPK()Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 7

    .line 275
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 278
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "application/force-download"

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 278
    invoke-static {v2, v3, v1, v4, v5}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 284
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const v1, 0x7f110189

    const v2, 0x7f11018b

    const v3, 0x7f110256

    .line 286
    invoke-direct {p0, v2, v3}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeNotFoundTemplate(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arrow-left.svg"

    .line 285
    invoke-direct {p0, v3, v1, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    .line 284
    invoke-static {v0, v2, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private serveFile([Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 7

    .line 293
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_31

    .line 296
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-direct {p0, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-wide/16 v3, -0x1

    .line 296
    invoke-static {v0, v2, p1, v3, v4}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 294
    :cond_31
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 2 args, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " given"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v0, "text/plain"

    const-string v1, "Not found"

    invoke-static {p1, v0, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private serveFileDownload([Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 12

    :try_start_0
    const-string v0, "download"

    const/4 v1, 0x0

    .line 309
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_124

    const-string v2, "application/force-download"

    const-string v3, "The group is not checked as served on the Web"

    const-string v4, " given"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_9b

    .line 310
    :try_start_13
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_80

    .line 313
    new-instance v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    aget-object v1, p1, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 314
    new-instance v1, Lcom/genonbeta/TrebleShot/object/TransferObject;

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 p1, 0x0

    sget-object v6, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    invoke-direct {v1, v4, v5, p1, v6}, Lcom/genonbeta/TrebleShot/object/TransferObject;-><init>(JLjava/lang/String;Lcom/genonbeta/TrebleShot/object/TransferObject$Type;)V

    .line 317
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 318
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 320
    iget-boolean p1, v0, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz p1, :cond_7a

    .line 323
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/genonbeta/TrebleShot/object/TransferObject;->file:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/genonbeta/android/framework/io/StreamInfo;->getStreamInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/genonbeta/android/framework/io/StreamInfo;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/genonbeta/android/framework/io/StreamInfo;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 329
    invoke-interface {p2}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v1, "Accept-Ranges"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_62} :catch_124

    if-eqz p2, :cond_71

    .line 333
    :try_start_64
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 335
    iget-wide v5, p1, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    cmp-long p2, v3, v5

    if-gez p2, :cond_71

    .line 336
    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_71} :catch_71

    .line 342
    :catch_71
    :cond_71
    :try_start_71
    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    iget-wide v3, p1, Lcom/genonbeta/android/framework/io/StreamInfo;->size:J

    invoke-static {p2, v2, v0, v3, v4}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 321
    :cond_7a
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_80
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected 3 args, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9b
    const-string p2, "download-zip"

    .line 344
    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_128

    .line 345
    array-length p2, p1

    if-lt p2, v5, :cond_109

    .line 348
    new-instance p2, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {p2, v7, v8}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 349
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 351
    iget-boolean p1, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz p1, :cond_103

    .line 354
    iget-object p1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object p1

    new-instance v0, Lcom/genonbeta/android/database/SQLQuery$Select;

    const-string v3, "divisionTransfer"

    new-array v4, v1, [Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "groupId=? AND type=?"

    new-array v4, v5, [Ljava/lang/String;

    iget-wide v7, p2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 358
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    sget-object p2, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->OUTGOING:Lcom/genonbeta/TrebleShot/object/TransferObject$Type;

    .line 359
    invoke-virtual {p2}, Lcom/genonbeta/TrebleShot/object/TransferObject$Type;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v6

    .line 356
    invoke-virtual {v0, v3, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object p2

    const-class v0, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 355
    invoke-virtual {p1, p2, v0}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 361
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v6, :cond_fb

    .line 364
    new-instance p2, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-direct {p2, p0, v0, v2, p1}, Lcom/genonbeta/TrebleShot/service/WebShareServer$ZipBundleResponse;-><init>(Lcom/genonbeta/TrebleShot/service/WebShareServer;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 362
    :cond_fb
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No files to send"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_103
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_109
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected 2 args, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_124} :catch_124

    :catch_124
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :cond_128
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const p2, 0x7f110189

    const v0, 0x7f11018b

    const v1, 0x7f110256

    .line 373
    invoke-direct {p0, v0, v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeNotFoundTemplate(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arrow-left.svg"

    .line 372
    invoke-direct {p0, v1, p2, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "text/html"

    .line 371
    invoke-static {p1, v0, p2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private serveHelpPage()Ljava/lang/String;
    .registers 7

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v2, 0x7f1101ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "help_title"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v3, 0x7f11009e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/service/WebShareServer$Tools;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "licence_text"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :try_start_25
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 462
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "apk_link"

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/trebleshot/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apk_filename"

    .line 468
    iget-object v3, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v4, 0x7f110188

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception v1

    .line 470
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 474
    :goto_82
    invoke-static {}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->getFieldPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v3, "help.html"

    invoke-direct {p0, v3}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->readPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {v1, v3, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->applyPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arrow-left.svg"

    invoke-direct {p0, v1, v2, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private serveMainPage()Ljava/lang/String;
    .registers 16

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v1

    new-instance v2, Lcom/genonbeta/android/database/SQLQuery$Select;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "transferGroup"

    invoke-direct {v2, v5, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "dateCreated DESC"

    .line 383
    invoke-virtual {v2, v4}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v2

    const-class v4, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 381
    invoke-virtual {v1, v2, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    .line 387
    iget-boolean v4, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-nez v4, :cond_36

    goto :goto_25

    .line 390
    :cond_36
    new-instance v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;

    invoke-direct {v4}, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;-><init>()V

    .line 391
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v5

    iget-wide v6, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-virtual {v5, v6, v7, v4}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->calculateTransactionSize(JLcom/genonbeta/TrebleShot/object/TransferGroup$Index;)V

    .line 393
    iget v5, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_4c

    goto :goto_25

    .line 396
    :cond_4c
    iget-object v5, p0, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v7, 0x7f11011d

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 397
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0006

    iget v12, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    new-array v13, v6, [Ljava/lang/Object;

    iget v14, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoingCount:I

    .line 399
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    .line 398
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    iget-wide v10, v4, Lcom/genonbeta/TrebleShot/object/TransferGroup$Index;->outgoing:J

    .line 399
    invoke-static {v10, v11, v3}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    .line 396
    invoke-virtual {v5, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f11007e

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "show"

    aput-object v8, v7, v3

    iget-wide v8, v2, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 401
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v6

    const-string v2, "list_transfer_group"

    .line 396
    invoke-direct {p0, v2, v4, v5, v7}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeContent(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 404
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a7

    const v1, 0x7f1101cd

    const v2, 0x7f110256

    .line 405
    invoke-direct {p0, v1, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeNotFoundTemplate(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a7
    const v1, 0x7f11023b

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "icon.png"

    invoke-direct {p0, v2, v1, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private serveTransferPage([Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "list_transfer"

    const-string v3, "arrow-left.svg"

    .line 414
    :try_start_8
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_11b

    .line 417
    new-instance v5, Lcom/genonbeta/TrebleShot/object/TransferGroup;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Lcom/genonbeta/TrebleShot/object/TransferGroup;-><init>(J)V

    .line 418
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->reconstruct(Lcom/genonbeta/android/database/DatabaseObject;)V

    .line 420
    iget-boolean v0, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup;->isServedOnWeb:Z

    if-eqz v0, :cond_113

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    iget-object v8, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getDatabase(Landroid/content/Context;)Lcom/genonbeta/TrebleShot/database/AccessDatabase;

    move-result-object v8

    new-instance v9, Lcom/genonbeta/android/database/SQLQuery$Select;

    const-string v10, "divisionTransfer"

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/String;

    invoke-direct {v9, v10, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v10, "%s = ?"

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "groupId"

    aput-object v13, v12, v11

    .line 426
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v12, v7, [Ljava/lang/String;

    iget-wide v13, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    .line 427
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    .line 426
    invoke-virtual {v9, v10, v12}, Lcom/genonbeta/android/database/SQLQuery$Select;->setWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v9

    const-string v10, "name ASC"

    .line 428
    invoke-virtual {v9, v10}, Lcom/genonbeta/android/database/SQLQuery$Select;->setOrderBy(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLQuery$Select;

    move-result-object v9

    const-class v10, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 424
    invoke-virtual {v8, v9, v10}, Lcom/genonbeta/TrebleShot/database/AccessDatabase;->castQuery(Lcom/genonbeta/android/database/SQLQuery$Select;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 431
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_107

    .line 432
    iget-object v9, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v10, 0x7f110041

    .line 433
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "download-zip"

    aput-object v13, v12, v11

    iget-wide v13, v5, Lcom/genonbeta/TrebleShot/object/TransferGroup;->groupId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0006

    .line 435
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v11

    .line 434
    invoke-virtual {v13, v14, v15, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v6

    const v4, 0x7f110040

    .line 432
    invoke-direct {v1, v2, v9, v4, v12}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeContent(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_107

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genonbeta/TrebleShot/object/TransferObject;

    .line 438
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v8, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    .line 439
    invoke-static {v12, v13, v11}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "download"

    aput-object v13, v12, v11

    iget-wide v13, v8, Lcom/genonbeta/TrebleShot/object/TransferObject;->groupId:J

    .line 440
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v7

    iget-wide v13, v8, Lcom/genonbeta/TrebleShot/object/TransferObject;->requestId:J

    .line 441
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v6

    iget-object v8, v8, Lcom/genonbeta/TrebleShot/object/TransferObject;->friendlyName:Ljava/lang/String;

    aput-object v8, v12, v10

    .line 438
    invoke-direct {v1, v2, v9, v4, v12}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeContent(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bc

    .line 444
    :cond_107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f11019e

    invoke-direct {v1, v3, v2, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 421
    :cond_113
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "The group is not checked as served on the Web"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_11b
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 2 args, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " given"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_138} :catch_138

    :catch_138
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f1101c8

    const v2, 0x7f110256

    .line 450
    invoke-direct {v1, v0, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeNotFoundTemplate(II)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f11019e

    .line 449
    invoke-direct {v1, v3, v2, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v3

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 97
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v6

    int-to-long v6, v6

    .line 100
    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v8, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const v10, 0x7f110254

    const-string v11, "text/plain"

    if-nez v8, :cond_2f

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v8, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2f

    :cond_2d
    move-object v3, v9

    goto :goto_70

    .line 102
    :cond_2f
    :goto_2f
    :try_start_2f
    iget-object v3, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    const-string v8, "tsLowPriority"

    invoke-virtual {v3, v6, v7, v8}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v3

    const v8, 0x1080081

    .line 105
    invoke-virtual {v3, v8}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    iget-object v12, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v12, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    iget-object v12, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v13, 0x7f1101fe

    .line 107
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 108
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v12

    const-string v13, "http-client-ip"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 112
    invoke-interface {v2, v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_6e} :catch_392
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2f .. :try_end_6e} :catch_383

    sub-long v4, v12, v4

    :goto_70
    const-string v13, "text/html"

    const/4 v14, 0x1

    if-eqz v3, :cond_28c

    .line 124
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v8

    const-string v15, "file"

    invoke-interface {v8, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28c

    .line 125
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 126
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v8, :cond_26b

    if-eqz v0, :cond_26b

    .line 128
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v14, :cond_9d

    goto/16 :goto_26b

    .line 135
    :cond_9d
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getApplicationDirectory(Landroid/content/Context;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v12

    .line 137
    new-instance v0, Lcom/genonbeta/android/framework/util/Interrupter;

    invoke-direct {v0}, Lcom/genonbeta/android/framework/util/Interrupter;-><init>()V

    .line 138
    invoke-static {v15}, Lcom/genonbeta/android/framework/io/DocumentFile;->fromFile(Ljava/io/File;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v17

    .line 140
    invoke-static {v12, v8, v14}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getUniqueFileName(Lcom/genonbeta/android/framework/io/DocumentFile;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 139
    invoke-virtual {v12, v9, v10}, Lcom/genonbeta/android/framework/io/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/genonbeta/android/framework/io/DocumentFile;

    move-result-object v9

    const v10, 0x7f0700b2

    .line 143
    invoke-virtual {v3, v10}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v14, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v2, 0x7f110254

    .line 144
    invoke-virtual {v14, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v14, 0x7f1101f1

    .line 145
    invoke-virtual {v10, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 146
    invoke-virtual {v2, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    const-wide/16 v18, 0x0

    .line 151
    :try_start_e2
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 153
    invoke-virtual/range {v17 .. v17}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 154
    invoke-virtual {v9}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v10, :cond_188

    if-eqz v2, :cond_188

    const/16 v14, 0x1fa0

    new-array v14, v14, [B

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_104} :catch_197

    move-object/from16 v22, v11

    move-object/from16 v16, v13

    move-wide/from16 v23, v18

    move-wide/from16 v25, v23

    const/4 v11, 0x0

    :goto_10d
    const/4 v13, -0x1

    if-eq v11, v13, :cond_180

    .line 166
    :try_start_110
    invoke-virtual {v10, v14}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_127

    const/4 v13, 0x0

    .line 167
    invoke-virtual {v2, v14, v13, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 168
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v27, v14

    int-to-long v13, v11

    add-long v23, v23, v13

    goto :goto_129

    :cond_127
    move-object/from16 v27, v14

    .line 173
    :goto_129
    invoke-virtual/range {v17 .. v17}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v13

    cmp-long v28, v13, v18

    if-lez v28, :cond_15a

    cmp-long v13, v23, v18

    if-lez v13, :cond_15a

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v25

    const-wide/16 v28, 0x7d0

    cmp-long v30, v13, v28

    if-lez v30, :cond_15a

    const/16 v13, 0x64

    .line 176
    invoke-virtual/range {v17 .. v17}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v25

    div-long v25, v23, v25
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_149} :catch_17d

    const-wide/16 v28, 0x64

    move/from16 v30, v11

    move-object v14, v12

    mul-long v11, v25, v28

    long-to-int v12, v11

    const/4 v11, 0x0

    .line 175
    :try_start_152
    invoke-virtual {v3, v13, v12, v11}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->updateProgress(IIZ)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    goto :goto_15d

    :cond_15a
    move/from16 v30, v11

    move-object v14, v12

    .line 180
    :goto_15d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v20

    const-wide/16 v28, 0x1388

    cmp-long v13, v11, v28

    if-gtz v13, :cond_175

    .line 181
    invoke-virtual {v0}, Lcom/genonbeta/android/framework/util/Interrupter;->interrupted()Z

    move-result v11

    if-nez v11, :cond_175

    move-object v12, v14

    move-object/from16 v14, v27

    move/from16 v11, v30

    goto :goto_10d

    .line 182
    :cond_175
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Timed out or interrupted. Exiting!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_17d
    move-exception v0

    move-object v14, v12

    goto :goto_19d

    :cond_180
    move-object v14, v12

    .line 185
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 186
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_1a0

    :cond_188
    move-object/from16 v22, v11

    move-object v14, v12

    move-object/from16 v16, v13

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to open streams to start copying"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_195} :catch_195

    :catch_195
    move-exception v0

    goto :goto_19d

    :catch_197
    move-exception v0

    move-object/from16 v22, v11

    move-object v14, v12

    move-object/from16 v16, v13

    .line 188
    :goto_19d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :goto_1a0
    :try_start_1a0
    invoke-virtual {v9}, Lcom/genonbeta/android/framework/io/DocumentFile;->sync()V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a3} :catch_1a4

    goto :goto_1a9

    :catch_1a4
    move-exception v0

    move-object v2, v0

    .line 195
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_1a9
    invoke-virtual {v9}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v10

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1c5

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v0, v10, v18

    if-nez v0, :cond_1be

    goto :goto_1c5

    .line 228
    :cond_1be
    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-object/from16 v3, v16

    goto/16 :goto_28f

    .line 200
    :cond_1c5
    :goto_1c5
    :try_start_1c5
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    const-string v2, "tsHighPriority"

    invoke-virtual {v0, v6, v7, v2}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->buildDynamicNotification(JLjava/lang/String;)Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    move-result-object v0

    const v2, 0x1080082

    .line 203
    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v6, 0x7f110254

    .line 204
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 205
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v6, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mNotificationUtils:Lcom/genonbeta/TrebleShot/util/NotificationUtils;

    .line 207
    invoke-virtual {v6}, Lcom/genonbeta/TrebleShot/util/NotificationUtils;->getNotificationSettings()I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1fa} :catch_263

    const v6, 0x7f1101fd

    const/4 v7, 0x2

    :try_start_1fe
    new-array v8, v7, [Ljava/lang/Object;

    .line 210
    invoke-virtual {v9}, Lcom/genonbeta/android/framework/io/DocumentFile;->length()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/genonbeta/TrebleShot/util/FileUtils;->sizeExpression(JZ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v12

    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    .line 211
    invoke-static {v10, v4, v5}, Lcom/genonbeta/TrebleShot/util/TimeUtils;->getFriendlyElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v8, v5

    .line 209
    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0700cc

    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const v5, 0x7f110080

    .line 213
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v6

    new-instance v8, Landroid/content/Intent;

    iget-object v10, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const-class v11, Lcom/genonbeta/TrebleShot/activity/FileExplorerActivity;

    invoke-direct {v8, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "filePath"

    .line 215
    invoke-virtual {v14}, Lcom/genonbeta/android/framework/io/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    const/4 v10, 0x0

    .line 214
    invoke-static {v5, v6, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 212
    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_249} :catch_261

    .line 218
    :try_start_249
    iget-object v2, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getOpenIntent(Landroid/content/Context;Lcom/genonbeta/android/framework/io/DocumentFile;)Landroid/content/Intent;

    move-result-object v2

    .line 219
    iget-object v3, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/genonbeta/TrebleShot/util/AppUtils;->getUniqueNumber()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_25d} :catch_25d

    .line 223
    :catch_25d
    :try_start_25d
    invoke-virtual {v0}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->show()Lcom/genonbeta/TrebleShot/util/DynamicNotification;
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_260} :catch_261

    goto :goto_268

    :catch_261
    move-exception v0

    goto :goto_265

    :catch_263
    move-exception v0

    const/4 v7, 0x2

    .line 225
    :goto_265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_268
    move-object/from16 v3, v16

    goto :goto_290

    :cond_26b
    :goto_26b
    move-object/from16 v16, v13

    .line 129
    invoke-virtual {v3}, Lcom/genonbeta/TrebleShot/util/DynamicNotification;->cancel()Lcom/genonbeta/TrebleShot/util/DynamicNotification;

    .line 130
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const v2, 0x7f110216

    const v3, 0x7f110107

    const v4, 0x7f1101c8

    .line 132
    invoke-direct {v1, v3, v4}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makeNotFoundTemplate(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arrow-left.svg"

    .line 131
    invoke-direct {v1, v4, v2, v3}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->makePage(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    .line 130
    invoke-static {v0, v3, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_28c
    move-object/from16 v22, v11

    move-object v3, v13

    :goto_28f
    const/4 v7, 0x2

    .line 232
    :goto_290
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/kill"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 233
    iget-object v0, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, v1, Lcom/genonbeta/TrebleShot/service/WebShareServer;->mContext:Landroid/content/Context;

    const-class v5, Lcom/genonbeta/TrebleShot/service/CommunicationService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE"

    .line 234
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 233
    invoke-static {v0, v2}, Lcom/genonbeta/TrebleShot/util/AppUtils;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2b0
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 238
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2cc

    .line 239
    invoke-interface/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_2cc
    :try_start_2cc
    array-length v2, v0

    if-lt v2, v4, :cond_2d3

    const/4 v2, 0x0

    aget-object v5, v0, v2

    goto :goto_2d6

    :cond_2d3
    const/4 v2, 0x0

    const-string v5, ""

    :goto_2d6
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3b0

    goto :goto_324

    :sswitch_2de
    const-string v4, "download"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_324

    const/4 v8, 0x0

    goto :goto_325

    :sswitch_2e8
    const-string v2, "download-zip"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_324

    const/4 v8, 0x1

    goto :goto_325

    :sswitch_2f2
    const-string v2, "image"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_324

    const/4 v8, 0x2

    goto :goto_325

    :sswitch_2fc
    const-string v2, "test"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_324

    const/4 v8, 0x5

    goto :goto_325

    :sswitch_306
    const-string v2, "show"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_324

    const/4 v8, 0x4

    goto :goto_325

    :sswitch_310
    const-string v2, "help"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_324

    const/4 v8, 0x6

    goto :goto_325

    :sswitch_31a
    const-string v2, "trebleshot"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_320} :catch_372

    if-eqz v2, :cond_324

    const/4 v8, 0x3

    goto :goto_325

    :cond_324
    :goto_324
    const/4 v8, -0x1

    :goto_325
    packed-switch v8, :pswitch_data_3ce

    move-object/from16 v4, v22

    .line 261
    :try_start_32a
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;
    :try_end_32c
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_32c} :catch_367

    goto :goto_369

    .line 258
    :pswitch_32d
    :try_start_32d
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->serveHelpPage()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v0, v3, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_338
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v2, "Works"
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_32d .. :try_end_33c} :catch_372

    move-object/from16 v4, v22

    :try_start_33e
    invoke-static {v0, v4, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :pswitch_343
    move-object/from16 v4, v22

    .line 252
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 253
    invoke-direct {v1, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->serveTransferPage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v2, v3, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :pswitch_350
    move-object/from16 v4, v22

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->serveAPK()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :pswitch_357
    move-object/from16 v4, v22

    .line 248
    invoke-direct {v1, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->serveFile([Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :pswitch_35e
    move-object/from16 v2, p1

    move-object/from16 v4, v22

    .line 246
    invoke-direct {v1, v0, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->serveFileDownload([Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :catch_367
    move-exception v0

    goto :goto_375

    .line 262
    :goto_369
    invoke-direct/range {p0 .. p0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->serveMainPage()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v0, v3, v2}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_371} :catch_367

    return-object v0

    :catch_372
    move-exception v0

    move-object/from16 v4, v22

    .line 265
    :goto_375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v2, v4, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :catch_383
    move-exception v0

    move-object v4, v11

    .line 119
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v2

    .line 120
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v2, v4, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :catch_392
    move-exception v0

    move-object v4, v11

    .line 115
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v2, v4, v0}, Lcom/genonbeta/TrebleShot/service/WebShareServer;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :sswitch_data_3b0
    .sparse-switch
        -0x4e3568b2 -> :sswitch_31a
        0x30cf41 -> :sswitch_310
        0x35dafd -> :sswitch_306
        0x364492 -> :sswitch_2fc
        0x5faa95b -> :sswitch_2f2
        0x4209905c -> :sswitch_2e8
        0x551ac888 -> :sswitch_2de
    .end sparse-switch

    :pswitch_data_3ce
    .packed-switch 0x0
        :pswitch_35e
        :pswitch_35e
        :pswitch_357
        :pswitch_350
        :pswitch_343
        :pswitch_338
        :pswitch_32d
    .end packed-switch
.end method
