.class public final Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
.super Lcom/google/android/gms/internal/measurement/zzib$zza;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcc$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzib$zza<",
        "Lcom/google/android/gms/internal/measurement/zzcc$zza;",
        "Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzcc$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzib$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzib;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzcb;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zza;I)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zza;Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
    .registers 3

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzb(Lcom/google/android/gms/internal/measurement/zzcc$zza;Lcom/google/android/gms/internal/measurement/zzcc$zzi;)V

    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;
    .registers 3

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zza;Z)V

    return-object p0
.end method
