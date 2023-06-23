.class public abstract Lcom/google/android/gms/internal/measurement/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzde;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzc:Z

.field private static final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static zze:Lcom/google/android/gms/internal/measurement/zzdj;

.field private static final zzi:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final zzf:Lcom/google/android/gms/internal/measurement/zzdf;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile zzj:I

.field private volatile zzk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zza:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zzb:Lcom/google/android/gms/internal/measurement/zzde;

    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzcw;->zzc:Z

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdj;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcy;->zza:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdj;-><init>(Lcom/google/android/gms/internal/measurement/zzdi;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdf;",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzj:I

    .line 22
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzb:Landroid/net/Uri;

    if-eqz v0, :cond_13

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzg:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzh:Ljava/lang/Object;

    .line 27
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzl:Z

    return-void

    .line 23
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzdb;)V
    .registers 6

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzcw;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 5

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    const/4 p4, 0x1

    .line 107
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 5

    const/4 p4, 0x1

    .line 105
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 4

    const/4 p3, 0x1

    .line 108
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 4

    const/4 p3, 0x1

    .line 106
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzcw;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_b

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzg:Ljava/lang/String;

    return-object p1

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzg:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zza()V
    .registers 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcw;->zzb:Lcom/google/android/gms/internal/measurement/zzde;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_d

    :cond_c
    move-object p0, v2

    :goto_d
    if-eqz v1, :cond_15

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_33

    .line 7
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzci;->zzc()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdh;->zza()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcr;->zza()V

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcz;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzcj;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdv;)V

    .line 15
    sput-object v2, Lcom/google/android/gms/internal/measurement/zzcw;->zzb:Lcom/google/android/gms/internal/measurement/zzde;

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdf;",
            "Ljava/lang/String;",
            "DZ)",
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p4, Lcom/google/android/gms/internal/measurement/zzdd;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-object p4
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdf;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance p4, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object p4
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdf;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzdc;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdc;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/zzcw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzdf;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/measurement/zzcw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzda;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzda;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object p3
.end method

.method static final synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdr;
    .registers 2

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcv;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzcv;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzdr;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zzd()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzdf;->zzd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzl:Z

    if-nez v0, :cond_11

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zze:Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzg:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."

    .line 35
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzb(ZLjava/lang/Object;)V

    .line 36
    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcw;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzj:I

    if-ge v1, v0, :cond_115

    .line 38
    monitor-enter p0

    .line 39
    :try_start_1c
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzj:I

    if-ge v1, v0, :cond_110

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcw;->zzb:Lcom/google/android/gms/internal/measurement/zzde;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    const-string v5, "Must call PhenotypeFlag.init() first"

    .line 42
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzdq;->zzb(ZLjava/lang/Object;)V

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v4

    const-string v5, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 50
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4d

    .line 51
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    const/4 v3, 0x0

    if-nez v2, :cond_91

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdf;->zzb:Landroid/net/Uri;

    if-eqz v2, :cond_78

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdf;->zzb:Landroid/net/Uri;

    .line 58
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcu;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdf;->zzb:Landroid/net/Uri;

    .line 61
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzci;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzci;

    move-result-object v2

    goto :goto_80

    :cond_76
    move-object v2, v3

    goto :goto_80

    .line 63
    :cond_78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v2

    :goto_80
    if-eqz v2, :cond_ba

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_bb

    :cond_91
    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 69
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcw;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b7

    :cond_b1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_b7
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    move-object v2, v3

    :goto_bb
    if-eqz v2, :cond_be

    goto :goto_df

    .line 76
    :cond_be
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v2

    .line 78
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdf;->zzc:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcm;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d9

    .line 81
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_da

    :cond_d9
    move-object v2, v3

    :goto_da
    if-eqz v2, :cond_dd

    goto :goto_df

    .line 86
    :cond_dd
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzh:Ljava/lang/Object;

    .line 88
    :goto_df
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzde;->zzb()Lcom/google/android/gms/internal/measurement/zzdv;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdr;

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdr;->zza()Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdr;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcs;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdf;->zzb:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzf:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzdf;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzg:Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcs;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_108

    .line 93
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzh:Ljava/lang/Object;

    goto :goto_10c

    :cond_108
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    :cond_10c
    :goto_10c
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzk:Ljava/lang/Object;

    .line 96
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzj:I

    .line 97
    :cond_110
    monitor-exit p0

    goto :goto_115

    :catchall_112
    move-exception v0

    monitor-exit p0
    :try_end_114
    .catchall {:try_start_1c .. :try_end_114} :catchall_112

    throw v0

    .line 98
    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcw;->zzk:Ljava/lang/Object;

    return-object v0
.end method
