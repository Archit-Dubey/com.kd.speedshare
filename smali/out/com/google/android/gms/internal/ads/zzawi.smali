.class final synthetic Lcom/google/android/gms/internal/ads/zzawi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawl;


# static fields
.field static final zzdwt:Lcom/google/android/gms/internal/ads/zzawl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawi;->zzdwt:Lcom/google/android/gms/internal/ads/zzawl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbhy;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhy;->getAppInstanceId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
