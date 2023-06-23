.class final Lcom/google/android/gms/internal/ads/zzkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkk;


# instance fields
.field private final synthetic zzasj:Lcom/google/android/gms/internal/ads/zzkn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzkm;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Lcom/google/android/gms/internal/ads/zzkn;)V

    return-void
.end method


# virtual methods
.method public final zza(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkn;->zza(ID)V

    return-void
.end method

.method public final zza(IILcom/google/android/gms/internal/ads/zzjw;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkn;->zza(IILcom/google/android/gms/internal/ads/zzjw;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkn;->zza(ILjava/lang/String;)V

    return-void
.end method

.method public final zzam(I)I
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkn;->zzam(I)I

    move-result p1

    return p1
.end method

.method public final zzan(I)Z
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkn;->zzan(I)Z

    move-result p1

    return p1
.end method

.method public final zzao(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkn;->zzao(I)V

    return-void
.end method

.method public final zzc(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkn;->zzc(IJ)V

    return-void
.end method

.method public final zzd(IJJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzht;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzasj:Lcom/google/android/gms/internal/ads/zzkn;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzkn;->zzd(IJJ)V

    return-void
.end method
