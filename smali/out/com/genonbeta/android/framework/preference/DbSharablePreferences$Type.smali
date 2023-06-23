.class public final enum Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;
.super Ljava/lang/Enum;
.source "DbSharablePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/android/framework/preference/DbSharablePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

.field public static final enum BOOLEAN:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

.field public static final enum FLOAT:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

.field public static final enum INTEGER:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

.field public static final enum LONG:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

.field public static final enum STRING:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 348
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->INTEGER:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    .line 349
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->STRING:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    .line 350
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    const-string v1, "FLOAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->FLOAT:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    .line 351
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    const-string v1, "BOOLEAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->BOOLEAN:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    .line 352
    new-instance v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    const-string v1, "LONG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->LONG:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    .line 346
    sget-object v7, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->INTEGER:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    aput-object v7, v1, v2

    sget-object v2, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->STRING:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->FLOAT:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->BOOLEAN:Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->$VALUES:[Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;
    .registers 2

    .line 346
    const-class v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;
    .registers 1

    .line 346
    sget-object v0, Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->$VALUES:[Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    invoke-virtual {v0}, [Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/android/framework/preference/DbSharablePreferences$Type;

    return-object v0
.end method
