.class final synthetic Lcom/google/android/gms/measurement/internal/zzjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjt;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzez;

.field private final zzd:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjt;ILcom/google/android/gms/measurement/internal/zzez;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zza:Lcom/google/android/gms/measurement/internal/zzjt;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzc:Lcom/google/android/gms/measurement/internal/zzez;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zza:Lcom/google/android/gms/measurement/internal/zzjt;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzc:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjs;->zzd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(ILcom/google/android/gms/measurement/internal/zzez;Landroid/content/Intent;)V

    return-void
.end method