.class public final enum Lcom/google/android/gms/internal/ads/zzcm;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzcm;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzegg;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegf<",
            "Lcom/google/android/gms/internal/ads/zzcm;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzll:Lcom/google/android/gms/internal/ads/zzcm;

.field private static final enum zzlm:Lcom/google/android/gms/internal/ads/zzcm;

.field public static final enum zzln:Lcom/google/android/gms/internal/ads/zzcm;

.field private static final enum zzlo:Lcom/google/android/gms/internal/ads/zzcm;

.field public static final enum zzlp:Lcom/google/android/gms/internal/ads/zzcm;

.field private static final enum zzlq:Lcom/google/android/gms/internal/ads/zzcm;

.field private static final synthetic zzlr:[Lcom/google/android/gms/internal/ads/zzcm;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "UNKNOWN_ENCRYPTION_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzll:Lcom/google/android/gms/internal/ads/zzcm;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "BITSLICER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzlm:Lcom/google/android/gms/internal/ads/zzcm;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "TINK_HYBRID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzln:Lcom/google/android/gms/internal/ads/zzcm;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "UNENCRYPTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzlo:Lcom/google/android/gms/internal/ads/zzcm;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "DG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzlp:Lcom/google/android/gms/internal/ads/zzcm;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "DG_XTEA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzlq:Lcom/google/android/gms/internal/ads/zzcm;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzcm;

    .line 31
    sget-object v8, Lcom/google/android/gms/internal/ads/zzcm;->zzll:Lcom/google/android/gms/internal/ads/zzcm;

    aput-object v8, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcm;->zzlm:Lcom/google/android/gms/internal/ads/zzcm;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcm;->zzln:Lcom/google/android/gms/internal/ads/zzcm;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcm;->zzlo:Lcom/google/android/gms/internal/ads/zzcm;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcm;->zzlp:Lcom/google/android/gms/internal/ads/zzcm;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcm;->zzlr:[Lcom/google/android/gms/internal/ads/zzcm;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzes:Lcom/google/android/gms/internal/ads/zzegf;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcm;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzcm;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->zzlr:[Lcom/google/android/gms/internal/ads/zzcm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzcm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzcm;

    return-object v0
.end method

.method public static zzm(I)Lcom/google/android/gms/internal/ads/zzcm;
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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcm;->zzlq:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0

    .line 8
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcm;->zzlp:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0

    .line 7
    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcm;->zzlo:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0

    .line 6
    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcm;->zzln:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0

    .line 5
    :cond_1f
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcm;->zzlm:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0

    .line 4
    :cond_22
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcm;->zzll:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0
.end method

.method public static zzx()Lcom/google/android/gms/internal/ads/zzegi;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzco;->zzeu:Lcom/google/android/gms/internal/ads/zzegi;

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
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->value:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcm;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcm;->value:I

    return v0
.end method
