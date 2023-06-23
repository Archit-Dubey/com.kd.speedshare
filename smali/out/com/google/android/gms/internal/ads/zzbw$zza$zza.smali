.class public final Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
.super Lcom/google/android/gms/internal/ads/zzegb$zzb;
.source "com.google.android.gms:play-services-gass@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbw$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzegb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzbw$zza;",
        "Lcom/google/android/gms/internal/ads/zzbw$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzehn;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zzu()Lcom/google/android/gms/internal/ads/zzbw$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzegb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbv;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
    .registers 3

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zza(Lcom/google/android/gms/internal/ads/zzbw$zza;Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)V

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
    .registers 4

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zza(Lcom/google/android/gms/internal/ads/zzbw$zza;J)V

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zza(Lcom/google/android/gms/internal/ads/zzbw$zza;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbw$zza;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
    .registers 3

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbw$zza;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
    .registers 3

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbw$zza;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zza;
    .registers 3

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfm()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zziem:Z

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbw$zza$zza;->zziel:Lcom/google/android/gms/internal/ads/zzegb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zze(Lcom/google/android/gms/internal/ads/zzbw$zza;Ljava/lang/String;)V

    return-object p0
.end method
