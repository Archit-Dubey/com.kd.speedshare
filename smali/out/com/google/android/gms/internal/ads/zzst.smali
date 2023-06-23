.class final Lcom/google/android/gms/internal/ads/zzst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbuu:Lcom/google/android/gms/internal/ads/zzsq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzbuu:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void
.end method
