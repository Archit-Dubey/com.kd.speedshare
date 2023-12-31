.class final Lcom/google/android/gms/internal/ads/zzkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkl;


# instance fields
.field private final zzaos:[B

.field private final zzaot:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzki;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaou:Lcom/google/android/gms/internal/ads/zzkq;

.field private zzaov:Lcom/google/android/gms/internal/ads/zzkk;

.field private zzaow:I

.field private zzaox:I

.field private zzaoy:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaos:[B

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaot:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaou:Lcom/google/android/gms/internal/ads/zzkq;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzjw;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaos:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_8
    if-ge v1, p2, :cond_18

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaos:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-wide v2
.end method


# virtual methods
.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaot:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaou:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkq;->reset()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzkk;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzjw;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpb;->checkState(Z)V

    .line 12
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaot:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaot:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzki;->zza(Lcom/google/android/gms/internal/ads/zzki;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3a

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaot:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzki;->zzb(Lcom/google/android/gms/internal/ads/zzki;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzkk;->zzao(I)V

    return v1

    .line 16
    :cond_3a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    const/4 v3, 0x4

    if-nez v0, :cond_84

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaou:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkq;->zza(Lcom/google/android/gms/internal/ads/zzjw;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjw;->zzgp()V

    .line 21
    :goto_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaos:[B

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzjw;->zza([BII)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaos:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkq;->zzap(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_74

    if-gt v0, v3, :cond_74

    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaos:[B

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzkq;->zza([BIZ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 25
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzkk;->zzan(I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 26
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    int-to-long v4, v5

    goto :goto_78

    .line 28
    :cond_74
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    goto :goto_4e

    :cond_78
    :goto_78
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_7f

    return v2

    :cond_7f
    long-to-int v0, v4

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    .line 34
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    .line 35
    :cond_84
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_95

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaou:Lcom/google/android/gms/internal/ads/zzkq;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/google/android/gms/internal/ads/zzkq;->zza(Lcom/google/android/gms/internal/ads/zzjw;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    .line 37
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    .line 38
    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzkk;->zzam(I)I

    move-result v0

    if-eqz v0, :cond_1a7

    if-eq v0, v1, :cond_187

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_157

    const/4 v4, 0x3

    if-eq v0, v4, :cond_119

    if-eq v0, v3, :cond_10c

    const/4 v4, 0x5

    if-ne v0, v4, :cond_f3

    .line 51
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_d5

    cmp-long v0, v7, v5

    if-nez v0, :cond_ba

    goto :goto_d5

    .line 52
    :cond_ba
    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_d5
    :goto_d5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    long-to-int v6, v5

    .line 54
    invoke-direct {p0, p1, v6}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjw;I)J

    move-result-wide v7

    if-ne v6, v3, :cond_e9

    long-to-int p1, v7

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_ed

    .line 57
    :cond_e9
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 59
    :goto_ed
    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzkk;->zza(ID)V

    .line 60
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    return v1

    .line 79
    :cond_f3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_10c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lcom/google/android/gms/internal/ads/zzkk;->zza(IILcom/google/android/gms/internal/ads/zzjw;)V

    .line 74
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    return v1

    .line 62
    :cond_119
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_13c

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    long-to-int v4, v3

    if-nez v4, :cond_12c

    const-string p1, ""

    goto :goto_136

    .line 67
    :cond_12c
    new-array v3, v4, [B

    .line 68
    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzjw;->readFully([BII)V

    .line 69
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .line 70
    :goto_136
    invoke-interface {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzkk;->zza(ILjava/lang/String;)V

    .line 71
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    return v1

    .line 63
    :cond_13c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_157
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_16c

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjw;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzkk;->zzc(IJ)V

    .line 49
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    return v1

    .line 47
    :cond_16c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_187
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjw;->getPosition()J

    move-result-wide v5

    .line 41
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    add-long/2addr v3, v5

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaot:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzki;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzki;-><init>(IJLcom/google/android/gms/internal/ads/zzkj;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaov:Lcom/google/android/gms/internal/ads/zzkk;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaox:I

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzkk;->zzd(IJJ)V

    .line 44
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    return v1

    .line 76
    :cond_1a7
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaoy:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzjw;->zzah(I)V

    .line 77
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkg;->zzaow:I

    goto/16 :goto_c
.end method
