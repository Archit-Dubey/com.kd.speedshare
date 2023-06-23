.class public final enum Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;
.super Ljava/lang/Enum;
.source "ConnectionManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvailableFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

.field public static final enum CreateHotspot:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

.field public static final enum EnterIpAddress:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

.field public static final enum Options:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

.field public static final enum ScanQrCode:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

.field public static final enum UseExistingNetwork:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

.field public static final enum UseKnownDevice:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 365
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const-string v1, "Options"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->Options:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    .line 366
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const-string v1, "UseExistingNetwork"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseExistingNetwork:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    .line 367
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const-string v1, "UseKnownDevice"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseKnownDevice:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    .line 368
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const-string v1, "ScanQrCode"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->ScanQrCode:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    .line 369
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const-string v1, "CreateHotspot"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->CreateHotspot:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    .line 370
    new-instance v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const-string v1, "EnterIpAddress"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->EnterIpAddress:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    .line 363
    sget-object v8, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->Options:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    aput-object v8, v1, v2

    sget-object v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseExistingNetwork:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    aput-object v2, v1, v3

    sget-object v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->UseKnownDevice:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    aput-object v2, v1, v4

    sget-object v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->ScanQrCode:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    aput-object v2, v1, v5

    sget-object v2, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->CreateHotspot:Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->$VALUES:[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;
    .registers 2

    .line 363
    const-class v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;
    .registers 1

    .line 363
    sget-object v0, Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->$VALUES:[Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    invoke-virtual {v0}, [Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/TrebleShot/activity/ConnectionManagerActivity$AvailableFragment;

    return-object v0
.end method
