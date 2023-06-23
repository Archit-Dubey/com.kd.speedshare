.class final Lcom/google/android/gms/internal/measurement/zzen;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzef;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zza:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zza:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzef;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zza:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zzg()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zza:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzef;->size()I

    move-result v0

    return v0
.end method
