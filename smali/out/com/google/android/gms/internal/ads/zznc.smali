.class public final Lcom/google/android/gms/internal/ads/zznc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznb;


# instance fields
.field private final zzaen:Lcom/google/android/gms/internal/ads/zzib;

.field private final zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

.field private final zzber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zznb;",
            ">;"
        }
    .end annotation
.end field

.field private zzbes:Lcom/google/android/gms/internal/ads/zzna;

.field private zzbet:Lcom/google/android/gms/internal/ads/zzia;

.field private zzbeu:Ljava/lang/Object;

.field private zzbev:I

.field private zzbew:Lcom/google/android/gms/internal/ads/zzne;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zznb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzber:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzib;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzaen:Lcom/google/android/gms/internal/ads/zzib;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbev:I

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/ads/zzia;Ljava/lang/Object;)V
    .registers 8

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbew:Lcom/google/android/gms/internal/ads/zzne;

    if-nez v0, :cond_3d

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzia;->zzfe()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1f

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznc;->zzaen:Lcom/google/android/gms/internal/ads/zzib;

    invoke-virtual {p2, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzia;->zza(ILcom/google/android/gms/internal/ads/zzib;Z)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzib;->zzaid:Z

    if-eqz v3, :cond_1c

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzne;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzne;-><init>(I)V

    goto :goto_3b

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 40
    :cond_1f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbev:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzia;->zzff()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbev:I

    goto :goto_3a

    .line 42
    :cond_2b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzia;->zzff()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbev:I

    if-eq v0, v1, :cond_3a

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzne;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzne;-><init>(I)V

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    .line 45
    :goto_3b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbew:Lcom/google/android/gms/internal/ads/zzne;

    .line 46
    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbew:Lcom/google/android/gms/internal/ads/zzne;

    if-eqz v0, :cond_42

    return-void

    .line 48
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzber:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_51

    .line 50
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbet:Lcom/google/android/gms/internal/ads/zzia;

    .line 51
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeu:Ljava/lang/Object;

    .line 52
    :cond_51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzber:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbes:Lcom/google/android/gms/internal/ads/zzna;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbet:Lcom/google/android/gms/internal/ads/zzia;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeu:Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzna;->zzb(Lcom/google/android/gms/internal/ads/zzia;Ljava/lang/Object;)V

    :cond_62
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zznc;ILcom/google/android/gms/internal/ads/zzia;Ljava/lang/Object;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznc;->zza(ILcom/google/android/gms/internal/ads/zzia;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzoi;)Lcom/google/android/gms/internal/ads/zzmz;
    .registers 7

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzmz;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zznb;->zza(ILcom/google/android/gms/internal/ads/zzoi;)Lcom/google/android/gms/internal/ads/zzmz;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 23
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/ads/zznd;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zznd;-><init>([Lcom/google/android/gms/internal/ads/zzmz;)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhe;ZLcom/google/android/gms/internal/ads/zzna;)V
    .registers 6

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbes:Lcom/google/android/gms/internal/ads/zzna;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 8
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    array-length v1, v0

    if-ge p3, v1, :cond_16

    .line 10
    aget-object v0, v0, p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zznf;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Lcom/google/android/gms/internal/ads/zznc;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zznb;->zza(Lcom/google/android/gms/internal/ads/zzhe;ZLcom/google/android/gms/internal/ads/zzna;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzmz;)V
    .registers 5

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/zznd;

    const/4 v0, 0x0

    .line 25
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 26
    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zznd;->zzbex:[Lcom/google/android/gms/internal/ads/zzmz;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zznb;->zzb(Lcom/google/android/gms/internal/ads/zzmz;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-void
.end method

.method public final zzhy()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbew:Lcom/google/android/gms/internal/ads/zzne;

    if-nez v0, :cond_13

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 16
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zznb;->zzhy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-void

    .line 14
    :cond_13
    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method public final zzhz()V
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zzbeq:[Lcom/google/android/gms/internal/ads/zznb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 30
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zznb;->zzhz()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
