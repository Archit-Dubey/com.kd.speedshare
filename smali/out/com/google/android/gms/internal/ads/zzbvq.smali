.class final synthetic Lcom/google/android/gms/internal/ads/zzbvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvx;


# static fields
.field static final zzfsk:Lcom/google/android/gms/internal/ads/zzbvx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbvq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbvq;->zzfsk:Lcom/google/android/gms/internal/ads/zzbvx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdiu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdiu;->onAdClosed()V

    return-void
.end method
