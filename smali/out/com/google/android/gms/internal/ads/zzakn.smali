.class final synthetic Lcom/google/android/gms/internal/ads/zzakn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgk:Lcom/google/android/gms/internal/ads/zzaju;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaju;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzdgk:Lcom/google/android/gms/internal/ads/zzaju;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzaju;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(Lcom/google/android/gms/internal/ads/zzaju;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakn;->zzdgk:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaju;->destroy()V

    return-void
.end method
