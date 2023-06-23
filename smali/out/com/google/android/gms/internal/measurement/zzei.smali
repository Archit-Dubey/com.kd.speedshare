.class abstract Lcom/google/android/gms/internal/measurement/zzei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzef;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzef;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzd:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzd:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzef;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zza:I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzd:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzee;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzei;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-void
.end method

.method private final zza()V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzd:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzef;->zza(Lcom/google/android/gms/internal/measurement/zzef;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zza:I

    if-ne v0, v1, :cond_b

    return-void

    .line 23
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzei;->zza()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzei;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzc:I

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zza(I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzd:Lcom/google/android/gms/internal/measurement/zzef;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzef;->zza(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    return-object v0

    .line 8
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzei;->zza()V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzc:I

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "no calls to next() since the last call to remove()"

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzb(ZLjava/lang/Object;)V

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zza:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zza:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzd:Lcom/google/android/gms/internal/measurement/zzef;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzb:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzc:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzef;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzc:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzef;->zzb(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzb:I

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzei;->zzc:I

    return-void
.end method

.method abstract zza(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method
