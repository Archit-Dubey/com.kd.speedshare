.class final Lcom/google/android/gms/internal/measurement/zzbk;
.super Lcom/google/android/gms/internal/measurement/zzag$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.4"


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Ljava/lang/Object;

.field private final synthetic zzf:Z

.field private final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zze:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzf:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zze:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzf:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zza:J

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzv;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    return-void
.end method
