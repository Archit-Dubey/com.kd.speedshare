.class public final Lcom/google/android/gms/internal/measurement/zzmo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzdv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzdv<",
        "Lcom/google/android/gms/internal/measurement/zzmn;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzmo;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzmn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmq;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmo;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzmn;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmo;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    return-void
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .registers 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zzf()Z
    .registers 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zze()Z

    move-result v0

    return v0
.end method

.method public static zzg()Z
    .registers 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzf()Z

    move-result v0

    return v0
.end method

.method public static zzh()Z
    .registers 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmo;->zza:Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzg()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmo;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmn;

    return-object v0
.end method
