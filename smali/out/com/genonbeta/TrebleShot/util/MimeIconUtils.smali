.class public Lcom/genonbeta/TrebleShot/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static sMimeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    const-string v0, "application/vnd.android.package-archive"

    const v1, 0x7f07009c

    .line 42
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/ogg"

    const v1, 0x7f0700e2

    .line 45
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-flac"

    .line 46
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/pgp-keys"

    const v1, 0x7f0700a9

    .line 49
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/pgp-signature"

    .line 50
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs12"

    .line 51
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-certreqresp"

    .line 52
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-crl"

    .line 53
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-x509-ca-cert"

    .line 54
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-x509-user-cert"

    .line 55
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-certificates"

    .line 56
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-mime"

    .line 57
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-signature"

    .line 58
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/rdf+xml"

    const v1, 0x7f0700b0

    .line 61
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/rss+xml"

    .line 62
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-object"

    .line 63
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/xhtml+xml"

    .line 64
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/css"

    .line 65
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/html"

    .line 66
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/xml"

    .line 67
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-c++hdr"

    .line 68
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-c++src"

    .line 69
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-chdr"

    .line 70
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-csrc"

    .line 71
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-dsrc"

    .line 72
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-csh"

    .line 73
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-haskell"

    .line 74
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-java"

    .line 75
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-literate-haskell"

    .line 76
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-pascal"

    .line 77
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-tcl"

    .line 78
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-tex"

    .line 79
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-latex"

    .line 80
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-texinfo"

    .line 81
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/atom+xml"

    .line 82
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/ecmascript"

    .line 83
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/json"

    .line 84
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/javascript"

    .line 85
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/xml"

    .line 86
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/javascript"

    .line 87
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-javascript"

    .line 88
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/mac-binhex40"

    const v1, 0x7f07010a

    .line 91
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/rar"

    .line 92
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/zip"

    .line 93
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-apple-diskimage"

    .line 94
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-debian-package"

    .line 95
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-gtar"

    .line 96
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-iso9660-image"

    .line 97
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-lha"

    .line 98
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-lzh"

    .line 99
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-lzx"

    .line 100
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-stuffit"

    .line 101
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-tar"

    .line 102
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-webarchive"

    .line 103
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-webarchive-xml"

    .line 104
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/gzip"

    .line 105
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-7z-compressed"

    .line 106
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-deb"

    .line 107
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-rar-compressed"

    .line 108
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-vcard"

    const v1, 0x7f070099

    .line 111
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/vcard"

    .line 112
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/calendar"

    const v1, 0x7f0700a6

    .line 115
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "text/x-vcalendar"

    .line 116
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-font"

    const v1, 0x7f0700c4

    .line 119
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/font-woff"

    .line 120
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-font-woff"

    .line 121
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-font-ttf"

    .line 122
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const v1, 0x7f0700ea

    .line 125
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    .line 126
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.image"

    .line 127
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.draw"

    .line 128
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.draw"

    .line 129
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.draw.template"

    .line 130
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/pdf"

    const v1, 0x7f0700c5

    .line 133
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.impress"

    const v1, 0x7f0700c7

    .line 136
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.impress"

    .line 137
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.impress.template"

    .line 138
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-kpresenter"

    .line 139
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.presentation"

    .line 140
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const v1, 0x7f0700d2

    .line 143
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    .line 144
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.calc"

    .line 145
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.calc"

    .line 146
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.calc.template"

    .line 147
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-kspread"

    .line 148
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text"

    const v1, 0x7f0700c1

    .line 151
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text-master"

    .line 152
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text-template"

    .line 153
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text-web"

    .line 154
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.writer"

    .line 155
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.writer-global"

    .line 156
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.writer"

    .line 157
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.writer.global"

    .line 158
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.writer.template"

    .line 159
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-abiword"

    .line 160
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-kword"

    .line 161
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-quicktimeplayer"

    const v1, 0x7f070105

    .line 164
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-shockwave-flash"

    .line 165
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/msword"

    const v1, 0x7f0700c9

    .line 168
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 169
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    .line 170
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.ms-excel"

    const v1, 0x7f0700c3

    .line 173
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 174
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    .line 175
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.ms-powerpoint"

    const v1, 0x7f0700c6

    .line 178
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 179
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    .line 180
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    .line 181
    invoke-static {v0, v1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;I)V
    .registers 3

    .line 186
    sget-object v0, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 187
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already registered!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static loadMimeIcon(Ljava/lang/String;)I
    .registers 3

    const-string v0, "vnd.android.document/directory"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p0, 0x7f0700cb

    return p0

    .line 201
    :cond_c
    sget-object v0, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1b
    const v0, 0x7f0700d6

    if-nez p0, :cond_21

    return v0

    :cond_21
    const-string v1, "/"

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    const-string v1, "audio"

    .line 211
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const p0, 0x7f0700e2

    return p0

    :cond_36
    const-string v1, "image"

    .line 213
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const p0, 0x7f0700ea

    return p0

    :cond_42
    const-string v1, "text"

    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const p0, 0x7f0700c1

    return p0

    :cond_4e
    const-string v1, "video"

    .line 217
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    const p0, 0x7f070105

    return p0

    :cond_5a
    return v0
.end method

.method public static loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 193
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/MimeIconUtils;->loadMimeIcon(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
