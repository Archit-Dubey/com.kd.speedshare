.class final synthetic Lcom/google/android/gms/internal/ads/zzdji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdie;


# static fields
.field static final zzgxc:Lcom/google/android/gms/internal/ads/zzdie;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdji;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdji;->zzgxc:Lcom/google/android/gms/internal/ads/zzdie;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzauj;->onRewardedAdOpened()V

    return-void
.end method
