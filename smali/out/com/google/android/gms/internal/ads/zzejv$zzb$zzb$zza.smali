.class public final Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb$zza;
.super Lcom/google/android/gms/internal/ads/zzegb$zzb;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;",
        "Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;->zzbim()Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejx;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzia(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;->zza(Lcom/google/android/gms/internal/ads/zzejv$zzb$zzb;Ljava/lang/String;)V

    return-object p0
.end method
