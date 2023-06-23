.class public final enum Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;
.super Ljava/lang/Enum;
.source "ConnectionManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

.field public static final enum MAKE_ACQUAINTANCE:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

.field public static final enum RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 359
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    const-string v1, "RETURN_RESULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    .line 360
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    const-string v1, "MAKE_ACQUAINTANCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->MAKE_ACQUAINTANCE:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    .line 357
    sget-object v4, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->RETURN_RESULT:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->$VALUES:[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;
    .registers 2

    .line 357
    const-class v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;
    .registers 1

    .line 357
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->$VALUES:[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$RequestType;

    return-object v0
.end method
