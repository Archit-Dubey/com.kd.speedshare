.class final Lcom/google/android/gms/internal/measurement/zzbp;
.super Lcom/google/android/gms/internal/measurement/zzag$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.4"


# instance fields
.field private final synthetic zzc:Landroid/app/Activity;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzag$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag$zzc;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzd:Lcom/google/android/gms/internal/measurement/zzag$zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzc:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzag$zzc;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzd:Lcom/google/android/gms/internal/measurement/zzag$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzag$zzc;->zza:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzc:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzb:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzv;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    return-void
.end method
