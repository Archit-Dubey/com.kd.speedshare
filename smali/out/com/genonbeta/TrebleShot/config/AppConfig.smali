.class public Lcom/genonbeta/TrebleShot/config/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final BUFFER_LENGTH_DEFAULT:I = 0x1fa0

.field public static final BUFFER_LENGTH_SMALL:I = 0x400

.field public static final DEFAULT_DISABLED_INTERFACES:[Ljava/lang/String;

.field public static final DEFAULT_NOTIFICATION_DELAY:I = 0x7d0

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x1388

.field public static final DEFAULT_SOCKET_TIMEOUT_LARGE:I = 0x9c40

.field public static final DELAY_CHECK_FOR_UPDATES:I = 0x5460

.field public static final EMAIL_DEVELOPER:Ljava/lang/String; = "thekdcorp@gmail.com"

.field public static final EXT_FILE_PART:Ljava/lang/String; = "tshare"

.field public static final KEY_GOOGLE_PUBLIC:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk1peq7MhNms9ynhnoRtwxnbizdEr3TKifUGlUPB3r33WkvPWjwowRvYeuY36+CkBmtjc46Xg/6/jrhPY+L0a+wd58lsNxLUMpo7tN2std0TGrsMmmlihb4Bsxcu/6ThsY4CIQx0bdze2v8Zle3e4EoHuXcqQnpwkb+3wMx2rR2E9ih+6utqrYAop9NdAbsRZ6BDXDUgJEuiHnRKwDZGDjU5PD4TCiR1jz2YJPYiRuI1QytJM6LirJu6YwE/o6pfzSQ3xXlK4yGpGUhzLdTmSNQNIJTWRqZoM7qNgp+0ocmfQRJ32/6E+BxbJaVbHdTINhbVAvLR+UFyQ2FldecfuQQIDAQAB"

.field public static final NDS_COMM_SERVICE_NAME:Ljava/lang/String; = "TSComm"

.field public static final NDS_COMM_SERVICE_TYPE:Ljava/lang/String; = "_tscomm._tcp."

.field public static final NETWORK_INTERFACE_WIFI:Ljava/lang/String; = "wlan0"

.field public static final NICKNAME_LENGTH_MAX:I = 0x20

.field public static final PHOTO_SCALE_FACTOR:I = 0x64

.field public static final PREFIX_ACCESS_POINT:Ljava/lang/String; = "TS_"

.field public static final SERVER_PORT_COMMUNICATION:I = 0x468

.field public static final SERVER_PORT_SEAMLESS:I = 0xe58a

.field public static final SERVER_PORT_UPDATE_CHANNEL:I = 0xe58d

.field public static final SERVER_PORT_WEBSHARE:I = 0xe56c

.field public static final SUPPORTED_MIN_VERSION:I = 0x3e

.field public static final URI_GITHUB_PROFILE:Ljava/lang/String; = ""

.field public static final URI_GOOGLE_PLAY:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.kd.speedshare"

.field public static final URI_REPO_APP:Ljava/lang/String; = "mailto:thekdcorp@gmail.com"

.field public static final URI_REPO_APP_CONTRIBUTORS:Ljava/lang/String; = ""

.field public static final URI_REPO_APP_UPDATE:Ljava/lang/String; = ""

.field public static final URI_REPO_ORG:Ljava/lang/String; = "https://github.com/TheKDCorporation"

.field public static final URI_TELEGRAM_CHANNEL:Ljava/lang/String; = ""

.field public static final URI_TRANSLATE:Ljava/lang/String; = "https://github.com/TheKDCorporation"

.field public static final WEB_SHARE_CONNECTION_MAX:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmnet"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/genonbeta/TrebleShot/config/AppConfig;->DEFAULT_DISABLED_INTERFACES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
