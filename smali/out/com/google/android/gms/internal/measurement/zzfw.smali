.class final Lcom/google/android/gms/internal/measurement/zzfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# direct methods
.method public static zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_15

    .line 4
    check-cast p1, Ljava/util/SortedSet;

    .line 5
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p1

    if-nez p1, :cond_1f

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    goto :goto_1f

    .line 11
    :cond_15
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfx;

    if-eqz v0, :cond_24

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->comparator()Ljava/util/Comparator;

    move-result-object p1

    .line 14
    :cond_1f
    :goto_1f
    invoke-interface {p0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
