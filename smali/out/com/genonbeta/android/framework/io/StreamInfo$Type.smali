.class public final enum Lcom/genonbeta/android/framework/io/StreamInfo$Type;
.super Ljava/lang/Enum;
.source "StreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/io/StreamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/android/framework/io/StreamInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/android/framework/io/StreamInfo$Type;

.field public static final enum File:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

.field public static final enum Stream:Lcom/genonbeta/android/framework/io/StreamInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 123
    new-instance v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    const-string v1, "Stream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/android/framework/io/StreamInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->Stream:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    .line 124
    new-instance v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    const-string v1, "File"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/android/framework/io/StreamInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->File:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    .line 121
    sget-object v4, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->Stream:Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->$VALUES:[Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/android/framework/io/StreamInfo$Type;
    .registers 2

    .line 121
    const-class v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/android/framework/io/StreamInfo$Type;
    .registers 1

    .line 121
    sget-object v0, Lcom/genonbeta/android/framework/io/StreamInfo$Type;->$VALUES:[Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    invoke-virtual {v0}, [Lcom/genonbeta/android/framework/io/StreamInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/android/framework/io/StreamInfo$Type;

    return-object v0
.end method
