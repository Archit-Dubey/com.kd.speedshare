.class final Lcom/google/android/gms/internal/ads/zzeif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/ads/zzeey;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzihy:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzeie;",
            ">;"
        }
    .end annotation
.end field

.field private zzihz:Lcom/google/android/gms/internal/ads/zzeey;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeie;

    if-eqz v0, :cond_22

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeie;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzbdg()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihy:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeif;->zzak(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihz:Lcom/google/android/gms/internal/ads/zzeey;

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihy:Ljava/util/ArrayDeque;

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeey;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihz:Lcom/google/android/gms/internal/ads/zzeey;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeer;Lcom/google/android/gms/internal/ads/zzeid;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method private final zzak(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeey;
    .registers 3

    .line 12
    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeie;

    if-eqz v0, :cond_10

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeie;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihy:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeie;->zza(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeey;

    return-object p1
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihz:Lcom/google/android/gms/internal/ads/zzeey;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihz:Lcom/google/android/gms/internal/ads/zzeey;

    if-eqz v0, :cond_2a

    .line 25
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihy:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_26

    .line 27
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihy:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeie;->zzb(Lcom/google/android/gms/internal/ads/zzeie;)Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzeif;->zzak(Lcom/google/android/gms/internal/ads/zzeer;)Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x0

    .line 31
    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeif;->zzihz:Lcom/google/android/gms/internal/ads/zzeey;

    return-object v0

    .line 22
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_31

    :goto_30
    throw v0

    :goto_31
    goto :goto_30
.end method

.method public final remove()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
