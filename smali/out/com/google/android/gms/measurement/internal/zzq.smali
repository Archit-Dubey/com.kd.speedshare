.class final Lcom/google/android/gms/measurement/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.4"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

.field private zzd:Ljava/util/BitSet;

.field private zze:Ljava/util/BitSet;

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Z

    .line 4
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/util/BitSet;

    .line 5
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zze:Ljava/util/BitSet;

    .line 6
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    .line 7
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzcc$zzi;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/util/BitSet;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzq;->zze:Ljava/util/BitSet;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    .line 14
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    if-eqz p7, :cond_3e

    .line 16
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 17
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_3e
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Z

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 9

    .line 102
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcc$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/util/BitSet;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zza;
    .registers 9

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    .line 62
    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Lcom/google/android/gms/internal/measurement/zzcc$zzi;

    if-eqz p1, :cond_13

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi;)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    .line 65
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzi;->zzi()Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/util/BitSet;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zze:Ljava/util/BitSet;

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    if-nez v1, :cond_31

    const/4 v1, 0x0

    goto :goto_7e

    .line 71
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    .line 72
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzcc$zzb$zza;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzb$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zzb$zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcc$zzb$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcc$zzb$zza;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcc$zzb;

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 82
    :cond_7e
    :goto_7e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    if-nez v1, :cond_8a

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_d3

    .line 87
    :cond_8a
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    .line 88
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc$zzj;->zze()Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_c7

    .line 93
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzj$zza;

    .line 95
    :cond_c7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcc$zzj;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 99
    :cond_d3
    :goto_d3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcc$zzi$zza;)Lcom/google/android/gms/internal/measurement/zzcc$zza$zza;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib$zza;->zzv()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzib;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcc$zza;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzv;)V
    .registers 10

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->zza()I

    move-result v0

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zze:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 27
    :cond_13
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_22

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    :cond_22
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_52

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 31
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    if-eqz v1, :cond_45

    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_52

    .line 34
    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_52
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/Long;

    if-eqz v1, :cond_d7

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_72

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_72
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->zzb()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    :cond_7b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zzb()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaq;->zzbf:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 44
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->zzc()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 47
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 48
    :cond_9a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zzb()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Lcom/google/android/gms/measurement/internal/zzo;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzt()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaq;->zzbf:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 50
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeo;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 52
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c8

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c8
    return-void

    .line 56
    :cond_c9
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/Long;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 58
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d7
    return-void
.end method
