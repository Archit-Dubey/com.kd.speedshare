.class public final Lcom/google/android/gms/internal/measurement/zzos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzop;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdf;

    const-string v1, "com.google.android.gms.measurement"

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdf;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    const-wide/16 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzos;->zza:Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "measurement.lifecycle.app_backgrounded_engagement"

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzos;->zzb:Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzos;->zzc:Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    .line 10
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzos;->zzd:Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzos;->zze:Lcom/google/android/gms/internal/measurement/zzcw;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzos;->zzb:Lcom/google/android/gms/internal/measurement/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzos;->zzc:Lcom/google/android/gms/internal/measurement/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzos;->zzd:Lcom/google/android/gms/internal/measurement/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
