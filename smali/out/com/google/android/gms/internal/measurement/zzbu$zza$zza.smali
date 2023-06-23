.class public final Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;
.super Lcom/google/android/gms/internal/measurement/zzib$zza;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbu$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib$zza<",
        "Lcom/google/android/gms/internal/measurement/zzbu$zza;",
        "Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzbu$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzib$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbt;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzd()I

    move-result v0

    return v0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzbu$zzb$zza;)Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;
    .registers 4

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    .line 21
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbu$zza;ILcom/google/android/gms/internal/measurement/zzbu$zzb;)V

    return-object p0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzbu$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;
    .registers 4

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 9
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbu$zze;

    .line 11
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbu$zza;ILcom/google/android/gms/internal/measurement/zzbu$zze;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbu$zze;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbu$zze;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()I
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzbu$zzb;
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    move-result-object p1

    return-object p1
.end method
