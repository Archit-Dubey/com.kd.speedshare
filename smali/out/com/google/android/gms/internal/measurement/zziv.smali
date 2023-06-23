.class final Lcom/google/android/gms/internal/measurement/zziv;
.super Lcom/google/android/gms/internal/measurement/zzit;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"


# static fields
.field private static final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziv;->zza:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(Lcom/google/android/gms/internal/measurement/zziw;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zziw;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zziv;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zziv;->zzc(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 17
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zziu;

    if-eqz v1, :cond_14

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/measurement/zzir;-><init>(I)V

    goto :goto_29

    .line 19
    :cond_14
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjv;

    if-eqz v1, :cond_24

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v1, :cond_24

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/measurement/zzik;->zza(I)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p3

    move-object v0, p3

    goto :goto_29

    .line 21
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_29
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7f

    .line 23
    :cond_2d
    sget-object v1, Lcom/google/android/gms/internal/measurement/zziv;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_49
    move-object v0, v1

    goto :goto_7f

    .line 28
    :cond_4b
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzkv;

    if-eqz v1, :cond_62

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzir;-><init>(I)V

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzgn;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_49

    .line 33
    :cond_62
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjv;

    if-eqz v1, :cond_7f

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v1, :cond_7f

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzik;

    .line 34
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza(I)Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    .line 36
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_7f
    :goto_7f
    return-object v0
.end method

.method private static zzc(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzla;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zziv;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 38
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zziv;->zzc(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/measurement/zziv;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1b

    if-lez v2, :cond_1b

    .line 43
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    if-lez v1, :cond_1e

    move-object p2, v0

    .line 45
    :cond_1e
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;J)V
    .registers 7

    .line 3
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzla;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zziu;

    if-eqz v1, :cond_11

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/measurement/zziu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zziu;->zze()Lcom/google/android/gms/internal/measurement/zziu;

    move-result-object v0

    goto :goto_36

    .line 6
    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/measurement/zziv;->zza:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 8
    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjv;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v1, :cond_32

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zza()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zzb()V

    :cond_31
    return-void

    .line 12
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzla;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
