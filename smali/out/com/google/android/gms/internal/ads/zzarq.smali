.class final Lcom/google/android/gms/internal/ads/zzarq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic zzdpf:Lcom/google/android/gms/internal/ads/zzarl;

.field private final synthetic zzdph:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzarl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarq;->zzdpf:Lcom/google/android/gms/internal/ads/zzarl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarq;->zzdph:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarq;->zzdpf:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarq;->zzdph:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_d
    :try_start_d
    const-string v0, "AdMob exception reporter failed reporting the exception."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarq;->zzdph:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    .line 8
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarq;->zzdph:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_22

    .line 10
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 11
    :cond_22
    throw v0
.end method
