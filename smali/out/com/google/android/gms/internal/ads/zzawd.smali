.class final synthetic Lcom/google/android/gms/internal/ads/zzawd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawl;


# static fields
.field static final zzdwt:Lcom/google/android/gms/internal/ads/zzawl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawd;->zzdwt:Lcom/google/android/gms/internal/ads/zzawl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbhy;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhy;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 5
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhy;->getCurrentScreenClass()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    return-object p1

    :cond_e
    const-string p1, ""

    return-object p1
.end method
