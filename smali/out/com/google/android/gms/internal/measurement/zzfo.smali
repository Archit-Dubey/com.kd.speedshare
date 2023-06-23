.class final Lcom/google/android/gms/internal/measurement/zzfo;
.super Lcom/google/android/gms/internal/measurement/zzeq;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzeq<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfp;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Lcom/google/android/gms/internal/measurement/zzfp;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(II)I

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zzb(Lcom/google/android/gms/internal/measurement/zzfp;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfp;

    .line 7
    aget-object v0, v0, p1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfp;->zzb(Lcom/google/android/gms/internal/measurement/zzfp;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 10
    aget-object p1, v1, p1

    .line 11
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Lcom/google/android/gms/internal/measurement/zzfp;)I

    move-result v0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
