.class public Lcom/google/android/gms/internal/measurement/zzib$zza;
.super Lcom/google/android/gms/internal/measurement/zzgi;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzib$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzgi<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzib;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzib;

    .line 3
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zzd:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzib;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzib$zza;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhf;",
            "Lcom/google/android/gms/internal/measurement/zzho;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 53
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Lcom/google/android/gms/internal/measurement/zzhf;)Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object p1

    .line 55
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjz;Lcom/google/android/gms/internal/measurement/zzho;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_2e

    .line 59
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 60
    :cond_2e
    throw p1
.end method

.method private final zzb([BIILcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzib$zza;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzho;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    .line 38
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    .line 40
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 41
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v5, 0x0

    add-int/lit8 v6, p3, 0x0

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v7, p4}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>(Lcom/google/android/gms/internal/measurement/zzho;)V

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzkc;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzgo;)V
    :try_end_22
    .catch Lcom/google/android/gms/internal/measurement/zzij; {:try_start_a .. :try_end_22} :catch_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_22} :catch_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 45
    :catch_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p1

    throw p1

    :catch_31
    move-exception p1

    .line 43
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzib;

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    .line 80
    sget v1, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zze:I

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zza;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzu()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    return-object v0
.end method

.method public final g_()Z
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzib;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic h_()Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/measurement/zzgj;)Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 2

    .line 62
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb(Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BII)Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzho;->zza()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    const/4 p2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzho;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzq()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzib;)V

    return-object p0
.end method

.method public final synthetic zzp()Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zza;

    return-object v0
.end method

.method protected zzq()V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    sget v1, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zzd:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzib;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    return-void
.end method

.method public zzs()Lcom/google/android/gms/internal/measurement/zzib;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzb:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza:Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/internal/measurement/zzib;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzu()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->g_()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 26
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Lcom/google/android/gms/internal/measurement/zzjj;)V

    .line 27
    throw v1
.end method

.method public synthetic zzu()Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzs()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzv()Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzt()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    return-object v0
.end method
