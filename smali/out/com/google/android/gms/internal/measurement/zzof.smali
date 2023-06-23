.class public final Lcom/google/android/gms/internal/measurement/zzof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzdv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzdv<",
        "Lcom/google/android/gms/internal/measurement/zzoi;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzof;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzoi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzof;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zza:Lcom/google/android/gms/internal/measurement/zzof;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoh;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzof;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzoi;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzof;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    return-void
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zza:Lcom/google/android/gms/internal/measurement/zzof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zza:Lcom/google/android/gms/internal/measurement/zzof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoi;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .registers 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zza:Lcom/google/android/gms/internal/measurement/zzof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoi;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zza:Lcom/google/android/gms/internal/measurement/zzof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoi;->zzd()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzof;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoi;

    return-object v0
.end method
