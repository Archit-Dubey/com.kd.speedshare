.class public final Lcom/google/android/gms/internal/measurement/zzkv;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziu;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziu;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zziu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zziu;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zziu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzkv;)Lcom/google/android/gms/internal/measurement/zziu;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zziu;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zziu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zziu;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>(Lcom/google/android/gms/internal/measurement/zzkv;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzky;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzky;-><init>(Lcom/google/android/gms/internal/measurement/zzkv;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zziu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zziu;->size()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzgt;)V
    .registers 2

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb(I)Ljava/lang/Object;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zziu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zziu;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zziu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zziu;->zzd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zziu;
    .registers 1

    return-object p0
.end method
