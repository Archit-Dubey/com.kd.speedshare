.class public final Lcom/google/android/gms/internal/measurement/zzor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzdv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzdv<",
        "Lcom/google/android/gms/internal/measurement/zzou;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzor;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzou;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzor;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzot;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzor;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "Lcom/google/android/gms/internal/measurement/zzou;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzor;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    return-void
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzor;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzou;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzor;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzou;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .registers 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzor;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzou;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzor;->zzb:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzou;

    return-object v0
.end method
