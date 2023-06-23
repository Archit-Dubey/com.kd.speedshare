.class public final Lcom/google/android/gms/internal/measurement/zzqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzdv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzdv<",
        "Lcom/google/android/gms/internal/measurement/zzpz;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzqa;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzpz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqa;->zza:Lcom/google/android/gms/internal/measurement/zzqa;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzqc;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzqa;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzpz;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqa;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    return-void
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqa;->zza:Lcom/google/android/gms/internal/measurement/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqa;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqa;->zza:Lcom/google/android/gms/internal/measurement/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqa;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpz;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqa;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpz;

    return-object v0
.end method
