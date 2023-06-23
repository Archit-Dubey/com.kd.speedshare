.class public final enum Lfi/iki/elonen/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum GET:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum POST:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PUT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum TRACE:Lfi/iki/elonen/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1153
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1154
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1155
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "POST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1156
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1157
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1158
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1159
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "TRACE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1160
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "CONNECT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1161
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PATCH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    const/16 v1, 0x9

    new-array v1, v1, [Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1152
    sget-object v11, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v11, v1, v2

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v3

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v4

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v5

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v6

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v7

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v8

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 6

    .line 1164
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD$Method;->values()[Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 1165
    invoke-virtual {v3}, Lfi/iki/elonen/NanoHTTPD$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2

    .line 1152
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Method;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 1

    .line 1152
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method
