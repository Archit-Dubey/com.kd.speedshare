.class public abstract Lcom/google/android/gms/internal/measurement/zzib;
.super Lcom/google/android/gms/internal/measurement/zzgj;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzib$zzc;,
        Lcom/google/android/gms/internal/measurement/zzib$zzd;,
        Lcom/google/android/gms/internal/measurement/zzib$zze;,
        Lcom/google/android/gms/internal/measurement/zzib$zzb;,
        Lcom/google/android/gms/internal/measurement/zzib$zza;,
        Lcom/google/android/gms/internal/measurement/zzib$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzib$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzgj<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/measurement/zzkt;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zza()Lcom/google/android/gms/internal/measurement/zzkt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Lcom/google/android/gms/internal/measurement/zzkt;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:I

    return-void
.end method

.method static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzib;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    if-nez v0, :cond_28

    .line 37
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    .line 44
    sget v1, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zzf:I

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    if-eqz v0, :cond_41

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 49
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    :goto_47
    return-object v0
.end method

.method protected static zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzih;
    .registers 2

    .line 81
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzih;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    .line 84
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzc(I)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzik;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "TE;>;"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzik;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    .line 89
    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza(I)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 61
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 62
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 63
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzib;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/measurement/zzib;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 64
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zza:I

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2d

    .line 74
    sget p1, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zzb:I

    if-eqz v0, :cond_29

    move-object v2, p0

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 77
    :goto_2a
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return v0
.end method

.method protected static zzbn()Lcom/google/android/gms/internal/measurement/zzii;
    .registers 1

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzd()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbo()Lcom/google/android/gms/internal/measurement/zzih;
    .registers 1

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzix;->zzd()Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbp()Lcom/google/android/gms/internal/measurement/zzik;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/zzik<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 13
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 15
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g_()Z
    .registers 2

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Lcom/google/android/gms/internal/measurement/zzib;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic h_()Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 3

    .line 103
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zzf:I

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    if-eqz v0, :cond_7

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    return v0

    .line 7
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkc;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjo;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzhi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzhi;)Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzln;)V

    return-void
.end method

.method final zzbj()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:I

    return v0
.end method

.method protected final zzbk()Lcom/google/android/gms/internal/measurement/zzib$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/measurement/zzib$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zze:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zza;

    return-object v0
.end method

.method public final zzbl()Lcom/google/android/gms/internal/measurement/zzib$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zze:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zza;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    return-object v0
.end method

.method public final zzbm()I
    .registers 3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:I

    .line 34
    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:I

    return v0
.end method

.method public final synthetic zzbq()Lcom/google/android/gms/internal/measurement/zzjm;
    .registers 3

    .line 91
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zze:I

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zza;

    .line 94
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib$zza;

    return-object v0
.end method

.method public final synthetic zzbr()Lcom/google/android/gms/internal/measurement/zzjm;
    .registers 3

    .line 98
    sget v0, Lcom/google/android/gms/internal/measurement/zzib$zzf;->zze:I

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib$zza;

    return-object v0
.end method

.method final zzc(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzc:I

    return-void
.end method
