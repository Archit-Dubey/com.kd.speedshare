.class public final Lcom/google/android/gms/internal/measurement/zzlt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlu;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Boolean;",
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdf;

    const-string v1, "com.google.android.gms.measurement"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdf;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.androidId.delete_feature"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "measurement.log_androidId_enabled"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzcw;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
