.class final Lcom/google/android/gms/internal/measurement/zzft;
.super Lcom/google/android/gms/internal/measurement/zzey;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzey<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzft<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I

.field private final transient zze:I

.field private final transient zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 31
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzft;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzft;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzft;->zza:Lcom/google/android/gms/internal/measurement/zzft;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzey;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzft;->zze:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzf:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzc:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    if-nez v0, :cond_8

    goto :goto_1f

    .line 11
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzeo;->zza(Ljava/lang/Object;)I

    move-result v2

    .line 12
    :goto_c
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzd:I

    and-int/2addr v2, v3

    .line 13
    aget-object v3, v0, v2

    if-nez v3, :cond_14

    return v1

    .line 16
    :cond_14
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    :goto_1f
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zze:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzer;->zzb()Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzf:I

    return v0
.end method

.method final zza()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzb([Ljava/lang/Object;I)I
    .registers 6

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzf:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzf:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfz<",
            "TE;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzer;->zzc()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfz;

    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/measurement/zzeq;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzeq<",
            "TE;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzf:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeq;->zza([Ljava/lang/Object;I)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    return-object v0
.end method

.method final zze()[Ljava/lang/Object;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzf()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzg()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzf:I

    return v0
.end method

.method final zzh()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
