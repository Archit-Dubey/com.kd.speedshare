.class public final Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;
.super Lcom/google/android/gms/internal/ads/zzegb$zzb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;",
        "Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;->zznk()Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zztx;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzca(I)Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;->zza(Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;I)V

    return-object p0
.end method

.method public final zzq(Z)Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;->zza(Lcom/google/android/gms/internal/ads/zzty$zzb$zzd;Z)V

    return-object p0
.end method
