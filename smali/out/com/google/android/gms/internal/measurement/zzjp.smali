.class final Lcom/google/android/gms/internal/measurement/zzjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzkc<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzjj;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzku<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhq<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzku;Lcom/google/android/gms/internal/measurement/zzhq;Lcom/google/android/gms/internal/measurement/zzjj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzku<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhq<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzjj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzjj;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzku;Lcom/google/android/gms/internal/measurement/zzhq;Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzku<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhq<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzjj;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzjp<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjp;-><init>(Lcom/google/android/gms/internal/measurement/zzku;Lcom/google/android/gms/internal/measurement/zzhq;Lcom/google/android/gms/internal/measurement/zzjj;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Z

    if-eqz v1, :cond_1b

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhr;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final zza()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzbr()Lcom/google/android/gms/internal/measurement/zzjm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjm;->zzu()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjz;Lcom/google/android/gms/internal/measurement/zzho;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzjz;",
            "Lcom/google/android/gms/internal/measurement/zzho;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzku;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v3

    .line 107
    :cond_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza()I

    move-result v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_8e

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_19

    .line 109
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_19
    :try_start_19
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3e

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    .line 117
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    ushr-int/lit8 v4, v4, 0x3

    .line 119
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzjj;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 121
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzjz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzhr;)V

    goto :goto_82

    .line 123
    :cond_34
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzku;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjz;)Z

    move-result v4

    goto :goto_83

    .line 124
    :cond_39
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzc()Z

    move-result v4

    goto :goto_83

    :cond_3e
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 128
    :cond_41
    :goto_41
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zza()I

    move-result v8

    if-eq v8, v5, :cond_6f

    .line 130
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5a

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzo()I

    move-result v4

    .line 133
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    .line 134
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzjj;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_41

    :cond_5a
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_69

    if-eqz v6, :cond_64

    .line 138
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzjz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzhr;)V

    goto :goto_41

    .line 140
    :cond_64
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzn()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v7

    goto :goto_41

    .line 142
    :cond_69
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzc()Z

    move-result v8

    if-nez v8, :cond_41

    .line 143
    :cond_6f
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzb()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_89

    if-eqz v7, :cond_82

    if-eqz v6, :cond_7f

    .line 147
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzgt;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzhr;)V

    goto :goto_82

    .line 148
    :cond_7f
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/measurement/zzku;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzgt;)V
    :try_end_82
    .catchall {:try_start_19 .. :try_end_82} :catchall_8e

    :cond_82
    :goto_82
    const/4 v4, 0x1

    :goto_83
    if-nez v4, :cond_c

    .line 151
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_89
    :try_start_89
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zze()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p2

    throw p2
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p2

    .line 153
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    goto :goto_94

    :goto_93
    throw p2

    :goto_94
    goto :goto_93
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzln;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzln;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzd()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzht;

    .line 32
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzc()Lcom/google/android/gms/internal/measurement/zzlo;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzlo;->zzi:Lcom/google/android/gms/internal/measurement/zzlo;

    if-ne v3, v4, :cond_52

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zzd()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zze()Z

    move-result v3

    if-nez v3, :cond_52

    .line 34
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zziq;

    if-eqz v3, :cond_46

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zziq;->zza()Lcom/google/android/gms/internal/measurement/zzio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzln;->zza(ILjava/lang/Object;)V

    goto :goto_a

    .line 38
    :cond_46
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzht;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzln;->zza(ILjava/lang/Object;)V

    goto :goto_a

    .line 33
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzln;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzgo;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Lcom/google/android/gms/internal/measurement/zzkt;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zza()Lcom/google/android/gms/internal/measurement/zzkt;

    move-result-object v2

    if-ne v1, v2, :cond_11

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb()Lcom/google/android/gms/internal/measurement/zzkt;

    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Lcom/google/android/gms/internal/measurement/zzkt;

    .line 47
    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib$zzb;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzib$zzb;->zza()Lcom/google/android/gms/internal/measurement/zzhr;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_18
    if-ge p3, p4, :cond_a4

    .line 51
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    .line 52
    iget v2, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_51

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_4c

    .line 57
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    iget-object v0, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzd:Lcom/google/android/gms/internal/measurement/zzho;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    ushr-int/lit8 v5, v2, 0x3

    .line 59
    invoke-virtual {p3, v0, v3, v5}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzjj;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zzd;

    if-nez v0, :cond_43

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 64
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(I[BIILcom/google/android/gms/internal/measurement/zzkt;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p3

    goto :goto_18

    .line 61
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    .line 62
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 65
    :cond_4c
    invoke-static {v2, p2, v4, p4, p5}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(I[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p3

    goto :goto_18

    :cond_51
    const/4 p3, 0x0

    move-object v2, p1

    :goto_53
    if-ge v4, p4, :cond_99

    .line 70
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    .line 71
    iget v5, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_7b

    const/4 v8, 0x3

    if-eq v6, v8, :cond_65

    goto :goto_90

    :cond_65
    if-nez v0, :cond_72

    if-ne v7, v3, :cond_90

    .line 89
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/measurement/zzgp;->zze([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    .line 90
    iget-object v2, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgt;

    goto :goto_53

    .line 86
    :cond_72
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    .line 87
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_7b
    if-nez v7, :cond_90

    .line 80
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    .line 81
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    iget-object v5, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzd:Lcom/google/android/gms/internal/measurement/zzho;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    .line 83
    invoke-virtual {v0, v5, v6, p3}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Lcom/google/android/gms/internal/measurement/zzho;Lcom/google/android/gms/internal/measurement/zzjj;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zzd;

    goto :goto_53

    :cond_90
    :goto_90
    const/16 v6, 0xc

    if-eq v5, v6, :cond_99

    .line 93
    invoke-static {v5, p2, v4, p4, p5}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(I[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    goto :goto_53

    :cond_99
    if-eqz v2, :cond_a1

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 99
    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(ILjava/lang/Object;)V

    :cond_a1
    move p3, v4

    goto/16 :goto_18

    :cond_a4
    if-ne p3, p4, :cond_a7

    return-void

    .line 102
    :cond_a7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p1

    goto :goto_ad

    :goto_ac
    throw p1

    :goto_ad
    goto :goto_ac
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Z

    if-eqz v0, :cond_29

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    .line 161
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzku;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzku;->zze(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 164
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Z

    if-eqz v1, :cond_1b

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhr;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzku;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzc:Z

    if-eqz v0, :cond_e

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzke;->zza(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzb:Lcom/google/android/gms/internal/measurement/zzku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzku;->zzd(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzd:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf()Z

    move-result p1

    return p1
.end method
