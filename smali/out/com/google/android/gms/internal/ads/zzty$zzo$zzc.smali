.class public final enum Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzty$zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzegg;"
    }
.end annotation


# static fields
.field public static final enum zzcdr:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field public static final enum zzcds:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field public static final enum zzcdt:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field public static final enum zzcdu:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field public static final enum zzcdv:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field public static final enum zzcdw:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field private static final synthetic zzcdx:[Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegf<",
            "Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdr:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const-string v1, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcds:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const-string v1, "CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdt:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const-string v1, "DISCONNECTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdu:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const-string v1, "DISCONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdv:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const-string v1, "SUSPENDED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdw:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 31
    sget-object v8, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdr:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    aput-object v8, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcds:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdt:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdu:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdv:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdx:[Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzup;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzes:Lcom/google/android/gms/internal/ads/zzegf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdx:[Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object v0
.end method

.method public static zzco(I)Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdw:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object p0

    .line 8
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdv:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object p0

    .line 7
    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdu:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object p0

    .line 6
    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdt:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object p0

    .line 5
    :cond_1f
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcds:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object p0

    .line 4
    :cond_22
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->zzcdr:Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;

    return-object p0
.end method

.method public static zzx()Lcom/google/android/gms/internal/ads/zzegi;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzuq;->zzeu:Lcom/google/android/gms/internal/ads/zzegi;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->value:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzw()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzo$zzc;->value:I

    return v0
.end method
