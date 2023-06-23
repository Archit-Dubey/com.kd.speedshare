.class public final Lcom/google/android/gms/internal/measurement/zzdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzdw;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzdx;

    if-eqz v0, :cond_9

    goto :goto_19

    .line 3
    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdw;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-object v0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzdv;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/zzdv<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdz;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
