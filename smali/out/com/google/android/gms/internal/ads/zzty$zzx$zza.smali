.class public final enum Lcom/google/android/gms/internal/ads/zzty$zzx$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzty$zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzty$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzegg;"
    }
.end annotation


# static fields
.field private static final enum zzcfu:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

.field private static final enum zzcfv:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

.field private static final enum zzcfw:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

.field private static final enum zzcfx:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

.field private static final synthetic zzcfy:[Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzegf<",
            "Lcom/google/android/gms/internal/ads/zzty$zzx$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    const-string v1, "VIDEO_ERROR_CODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfu:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    const-string v1, "OPENGL_RENDERING_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfv:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    const-string v1, "CACHE_LOAD_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfw:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    const-string v1, "ANDROID_TARGET_API_TOO_LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfx:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    .line 27
    sget-object v6, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfu:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfv:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfw:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfy:[Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzus;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzus;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzes:Lcom/google/android/gms/internal/ads/zzegf;

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
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzty$zzx$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfy:[Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    return-object v0
.end method

.method public static zzcv(I)Lcom/google/android/gms/internal/ads/zzty$zzx$zza;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfx:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    return-object p0

    .line 6
    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfw:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    return-object p0

    .line 5
    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfv:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    return-object p0

    .line 4
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->zzcfu:Lcom/google/android/gms/internal/ads/zzty$zzx$zza;

    return-object p0
.end method

.method public static zzx()Lcom/google/android/gms/internal/ads/zzegi;
    .registers 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzur;->zzeu:Lcom/google/android/gms/internal/ads/zzegi;

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
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->value:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzx$zza;->value:I

    return v0
.end method
