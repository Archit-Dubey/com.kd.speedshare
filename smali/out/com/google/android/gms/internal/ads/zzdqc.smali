.class final synthetic Lcom/google/android/gms/internal/ads/zzdqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhii:Lcom/google/android/gms/internal/ads/zzdpz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhii:Lcom/google/android/gms/internal/ads/zzdpz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zzhii:Lcom/google/android/gms/internal/ads/zzdpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpz;->zzavc()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    return-object v0
.end method
