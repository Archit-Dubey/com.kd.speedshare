.class final Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhh;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Z)V

    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Z

    if-ne v1, v2, :cond_34

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzx()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v1

    if-eq v1, v0, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzab()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa()Z

    move-result v2

    if-eq v1, v2, :cond_6b

    .line 12
    :cond_50
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zzy:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzr()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzk()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 17
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfb;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Lcom/google/android/gms/measurement/internal/zzhh;)V

    return-void
.end method
