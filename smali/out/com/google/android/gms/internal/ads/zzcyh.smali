.class final synthetic Lcom/google/android/gms/internal/ads/zzcyh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrx;


# static fields
.field static final zzdvt:Lcom/google/android/gms/internal/ads/zzdrx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcyh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcyh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcyh;->zzdvt:Lcom/google/android/gms/internal/ads/zzdrx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
