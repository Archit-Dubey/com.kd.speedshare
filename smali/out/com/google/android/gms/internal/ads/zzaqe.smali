.class final synthetic Lcom/google/android/gms/internal/ads/zzaqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbc;


# static fields
.field static final zzbxr:Lcom/google/android/gms/internal/ads/zzbbc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqe;->zzbxr:Lcom/google/android/gms/internal/ads/zzbbc;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdph;->zzat(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzdpi;

    move-result-object p1

    return-object p1
.end method
