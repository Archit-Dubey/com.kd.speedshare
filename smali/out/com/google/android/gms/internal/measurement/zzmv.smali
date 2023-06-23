.class public final Lcom/google/android/gms/internal/measurement/zzmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzdv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzdv<",
        "Lcom/google/android/gms/internal/measurement/zzmy;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzmv;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzmy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:Lcom/google/android/gms/internal/measurement/zzmv;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmx;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzmy;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    return-void
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmy;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmy;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmy;

    return-object v0
.end method
