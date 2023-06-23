.class public final enum Lcom/google/android/gms/internal/ads/zzcn;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzcn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzegg;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegf<",
            "Lcom/google/android/gms/internal/ads/zzcn;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzls:Lcom/google/android/gms/internal/ads/zzcn;

.field public static final enum zzlt:Lcom/google/android/gms/internal/ads/zzcn;

.field public static final enum zzlu:Lcom/google/android/gms/internal/ads/zzcn;

.field private static final enum zzlv:Lcom/google/android/gms/internal/ads/zzcn;

.field private static final synthetic zzlw:[Lcom/google/android/gms/internal/ads/zzcn;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcn;

    const-string v1, "ENUM_FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzls:Lcom/google/android/gms/internal/ads/zzcn;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcn;

    const-string v1, "ENUM_TRUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzlt:Lcom/google/android/gms/internal/ads/zzcn;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcn;

    const-string v1, "ENUM_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzlu:Lcom/google/android/gms/internal/ads/zzcn;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcn;

    const-string v1, "ENUM_UNKNOWN"

    const/4 v5, 0x3

    const/16 v6, 0x3e8

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzlv:Lcom/google/android/gms/internal/ads/zzcn;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzcn;

    .line 27
    sget-object v6, Lcom/google/android/gms/internal/ads/zzcn;->zzls:Lcom/google/android/gms/internal/ads/zzcn;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcn;->zzlt:Lcom/google/android/gms/internal/ads/zzcn;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcn;->zzlu:Lcom/google/android/gms/internal/ads/zzcn;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcn;->zzlw:[Lcom/google/android/gms/internal/ads/zzcn;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzes:Lcom/google/android/gms/internal/ads/zzegf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcn;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzcn;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zzlw:[Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzcn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzcn;

    return-object v0
.end method

.method public static zzn(I)Lcom/google/android/gms/internal/ads/zzcn;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcn;->zzlv:Lcom/google/android/gms/internal/ads/zzcn;

    return-object p0

    .line 6
    :cond_11
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcn;->zzlu:Lcom/google/android/gms/internal/ads/zzcn;

    return-object p0

    .line 5
    :cond_14
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcn;->zzlt:Lcom/google/android/gms/internal/ads/zzcn;

    return-object p0

    .line 4
    :cond_17
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcn;->zzls:Lcom/google/android/gms/internal/ads/zzcn;

    return-object p0
.end method

.method public static zzx()Lcom/google/android/gms/internal/ads/zzegi;
    .registers 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcp;->zzeu:Lcom/google/android/gms/internal/ads/zzegi;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcn;->value:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcn;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcn;->value:I

    return v0
.end method
