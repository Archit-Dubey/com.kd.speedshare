.class final Lcom/google/android/gms/internal/measurement/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.4"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/android/gms/internal/measurement/zzio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/android/gms/internal/measurement/zzio;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Ljava/util/Map$Entry;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/android/gms/internal/measurement/zzin;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzio;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzio;->zza()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 10
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_13

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzio;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzis;->zza(Lcom/google/android/gms/internal/measurement/zzjj;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    return-object p1

    .line 11
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzio;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzio;

    return-object v0
.end method
