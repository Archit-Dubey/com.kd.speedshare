.class public final Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
.super Lcom/google/android/gms/internal/ads/zzegb$zzb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcf$zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf;",
        "Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzbn()Lcom/google/android/gms/internal/ads/zzcf$zzf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzce;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcm;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzcm;)V

    return-object p0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zza(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf$zzf$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcf$zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcf$zzf;->zzb(Lcom/google/android/gms/internal/ads/zzcf$zzf;Lcom/google/android/gms/internal/ads/zzeer;)V

    return-object p0
.end method
