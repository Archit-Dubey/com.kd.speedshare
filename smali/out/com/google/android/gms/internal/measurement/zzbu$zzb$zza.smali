.class public final Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;
.super Lcom/google/android/gms/internal/measurement/zzib$zza;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbu$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib$zza<",
        "Lcom/google/android/gms/internal/measurement/zzbu$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zzm()Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzib$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbt;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/measurement/zzbu$zzc;)Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;
    .registers 4

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 16
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbu$zzb;ILcom/google/android/gms/internal/measurement/zzbu$zzc;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;
    .registers 3

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 8
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbu$zzb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbu$zzc;
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzbu$zzc;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu$zzb;->zze()I

    move-result v0

    return v0
.end method
