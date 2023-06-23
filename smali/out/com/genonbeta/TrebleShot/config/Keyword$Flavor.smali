.class public final enum Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;
.super Ljava/lang/Enum;
.source "Keyword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/config/Keyword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flavor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

.field public static final enum fossReliant:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

.field public static final enum googlePlay:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

.field public static final enum unknown:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 65
    new-instance v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->unknown:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    .line 66
    new-instance v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    const-string v1, "fossReliant"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->fossReliant:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    .line 67
    new-instance v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    const-string v1, "googlePlay"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->googlePlay:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    .line 63
    sget-object v5, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->unknown:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    aput-object v5, v1, v2

    sget-object v2, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->fossReliant:Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->$VALUES:[Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;
    .registers 2

    .line 63
    const-class v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;
    .registers 1

    .line 63
    sget-object v0, Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->$VALUES:[Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/config/Keyword$Flavor;

    return-object v0
.end method
