.class final Lcom/google/android/gms/internal/measurement/zzbg;
.super Lcom/google/android/gms/internal/measurement/zzag$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.4"


# instance fields
.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzd:Lcom/google/android/gms/internal/measurement/zzag;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzc:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzd:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzc:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzv;->setDataCollectionEnabled(Z)V

    return-void
.end method
