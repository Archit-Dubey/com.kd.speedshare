.class final Lcom/google/android/gms/internal/measurement/zzaj;
.super Lcom/google/android/gms/internal/measurement/zzag$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.4"


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Landroid/content/Context;

.field private final synthetic zzf:Landroid/os/Bundle;

.field private final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zze:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzf:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzd:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzd:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzc:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzag;->zzb(Lcom/google/android/gms/internal/measurement/zzag;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v2

    move-object v11, v3

    move-object v9, v4

    goto :goto_2a

    :cond_27
    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    .line 10
    :goto_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zze:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzag;->zzb(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzag;->zzj()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3e

    if-eqz v10, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v2, 0x1

    .line 12
    :goto_3f
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zze:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/internal/measurement/zzv;

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v3

    if-nez v3, :cond_60

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzag;->zzb(Lcom/google/android/gms/internal/measurement/zzag;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to connect to measurement client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_60
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zze:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Landroid/content/Context;)I

    move-result v3

    .line 17
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zze:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzag;->zzd(Landroid/content/Context;)I

    move-result v4

    if-eqz v2, :cond_79

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v4, v3, :cond_76

    const/4 v3, 0x1

    goto :goto_77

    :cond_76
    const/4 v3, 0x0

    :goto_77
    move v8, v3

    goto :goto_83

    :cond_79
    if-lez v3, :cond_7c

    move v4, v3

    :cond_7c
    if-lez v3, :cond_80

    const/4 v2, 0x1

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    :goto_81
    move v8, v2

    move v2, v4

    .line 23
    :goto_83
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzae;

    const-wide/16 v4, 0x7918

    int-to-long v6, v2

    iget-object v12, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzf:Landroid/os/Bundle;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zze:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zza:J

    invoke-interface {v2, v3, v13, v4, v5}, Lcom/google/android/gms/internal/measurement/zzv;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzae;J)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9f} :catch_a0

    return-void

    :catch_a0
    move-exception v2

    .line 27
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzg:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v3, v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/Exception;ZZ)V

    return-void
.end method
