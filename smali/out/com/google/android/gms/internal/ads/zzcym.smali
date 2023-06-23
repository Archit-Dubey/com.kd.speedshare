.class public Lcom/google/android/gms/internal/ads/zzcym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcym$zza;
    }
.end annotation


# instance fields
.field private zzgqz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcym$zza;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcym$zza;->zza(Lcom/google/android/gms/internal/ads/zzcym$zza;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcym;->zzgqz:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcym$zza;Lcom/google/android/gms/internal/ads/zzcyo;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcym;-><init>(Lcom/google/android/gms/internal/ads/zzcym$zza;)V

    return-void
.end method


# virtual methods
.method public final zzaqj()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcym;->zzgqz:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final zzaqk()Ljava/lang/String;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcym;->zzgqz:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaql()Lcom/google/android/gms/internal/ads/zzty$zza$zza;
    .registers 6

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcym;->zzgqz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_4e

    goto :goto_35

    :sswitch_d
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_36

    :sswitch_17
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x3

    goto :goto_36

    :sswitch_21
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :sswitch_2b
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, -0x1

    :goto_36
    if-eqz v0, :cond_4a

    if-eq v0, v4, :cond_47

    if-eq v0, v3, :cond_44

    if-eq v0, v2, :cond_41

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zza$zza;->zzbxw:Lcom/google/android/gms/internal/ads/zzty$zza$zza;

    return-object v0

    .line 12
    :cond_41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zza$zza;->zzbyd:Lcom/google/android/gms/internal/ads/zzty$zza$zza;

    return-object v0

    .line 11
    :cond_44
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zza$zza;->zzbyc:Lcom/google/android/gms/internal/ads/zzty$zza$zza;

    return-object v0

    .line 10
    :cond_47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zza$zza;->zzbxz:Lcom/google/android/gms/internal/ads/zzty$zza$zza;

    return-object v0

    .line 9
    :cond_4a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzty$zza$zza;->zzbxx:Lcom/google/android/gms/internal/ads/zzty$zza$zza;

    return-object v0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x772abbe9 -> :sswitch_2b
        -0x51d5b0d4 -> :sswitch_21
        0x205e3c0e -> :sswitch_17
        0x7458732c -> :sswitch_d
    .end sparse-switch
.end method
