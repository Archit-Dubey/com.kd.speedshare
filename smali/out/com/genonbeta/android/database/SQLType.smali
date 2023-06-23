.class public final enum Lcom/genonbeta/android/database/SQLType;
.super Ljava/lang/Enum;
.source "SQLType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/genonbeta/android/database/SQLType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genonbeta/android/database/SQLType;

.field public static final enum BLOB:Lcom/genonbeta/android/database/SQLType;

.field public static final enum DATE:Lcom/genonbeta/android/database/SQLType;

.field public static final enum DOUBLE:Lcom/genonbeta/android/database/SQLType;

.field public static final enum INTEGER:Lcom/genonbeta/android/database/SQLType;

.field public static final enum LONG:Lcom/genonbeta/android/database/SQLType;

.field public static final enum TEXT:Lcom/genonbeta/android/database/SQLType;

.field public static final enum TIMESTAMP:Lcom/genonbeta/android/database/SQLType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 10
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    .line 11
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "DOUBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->DOUBLE:Lcom/genonbeta/android/database/SQLType;

    .line 12
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "LONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    .line 13
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "TEXT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    .line 14
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "DATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->DATE:Lcom/genonbeta/android/database/SQLType;

    .line 15
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "BLOB"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->BLOB:Lcom/genonbeta/android/database/SQLType;

    .line 16
    new-instance v0, Lcom/genonbeta/android/database/SQLType;

    const-string v1, "TIMESTAMP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/genonbeta/android/database/SQLType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genonbeta/android/database/SQLType;->TIMESTAMP:Lcom/genonbeta/android/database/SQLType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/genonbeta/android/database/SQLType;

    .line 8
    sget-object v9, Lcom/genonbeta/android/database/SQLType;->INTEGER:Lcom/genonbeta/android/database/SQLType;

    aput-object v9, v1, v2

    sget-object v2, Lcom/genonbeta/android/database/SQLType;->DOUBLE:Lcom/genonbeta/android/database/SQLType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/genonbeta/android/database/SQLType;->LONG:Lcom/genonbeta/android/database/SQLType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/genonbeta/android/database/SQLType;->TEXT:Lcom/genonbeta/android/database/SQLType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/genonbeta/android/database/SQLType;->DATE:Lcom/genonbeta/android/database/SQLType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/genonbeta/android/database/SQLType;->BLOB:Lcom/genonbeta/android/database/SQLType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/genonbeta/android/database/SQLType;->$VALUES:[Lcom/genonbeta/android/database/SQLType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genonbeta/android/database/SQLType;
    .registers 2

    .line 8
    const-class v0, Lcom/genonbeta/android/database/SQLType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/genonbeta/android/database/SQLType;

    return-object p0
.end method

.method public static values()[Lcom/genonbeta/android/database/SQLType;
    .registers 1

    .line 8
    sget-object v0, Lcom/genonbeta/android/database/SQLType;->$VALUES:[Lcom/genonbeta/android/database/SQLType;

    invoke-virtual {v0}, [Lcom/genonbeta/android/database/SQLType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genonbeta/android/database/SQLType;

    return-object v0
.end method
