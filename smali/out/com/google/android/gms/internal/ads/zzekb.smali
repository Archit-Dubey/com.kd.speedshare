.class final Lcom/google/android/gms/internal/ads/zzekb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegi;


# static fields
.field static final zzeu:Lcom/google/android/gms/internal/ads/zzegi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzekb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekb;->zzeu:Lcom/google/android/gms/internal/ads/zzegi;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzi(I)Z
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzf$zzb;->zzht(I)Lcom/google/android/gms/internal/ads/zzejv$zzb$zzf$zzb;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
