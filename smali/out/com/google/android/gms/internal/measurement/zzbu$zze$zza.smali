.class public final Lcom/google/android/gms/internal/measurement/zzbu$zze$zza;
.super Lcom/google/android/gms/internal/measurement/zzib$zza;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbu$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib$zza<",
        "Lcom/google/android/gms/internal/measurement/zzbu$zze;",
        "Lcom/google/android/gms/internal/measurement/zzbu$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zzj()Lcom/google/android/gms/internal/measurement/zzbu$zze;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzib$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbt;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbu$zze$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbu$zze$zza;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbu$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu$zze;->zza(Lcom/google/android/gms/internal/measurement/zzbu$zze;Ljava/lang/String;)V

    return-object p0
.end method
