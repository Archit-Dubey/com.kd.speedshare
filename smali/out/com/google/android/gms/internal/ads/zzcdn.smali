.class public final Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zzbqd:Lcom/google/android/gms/common/util/Clock;

.field private final zzfyt:Lcom/google/android/gms/internal/ads/zzcgr;

.field private zzfyu:Lcom/google/android/gms/internal/ads/zzafo;

.field private zzfyv:Lcom/google/android/gms/internal/ads/zzahc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahc<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field zzfyw:Ljava/lang/String;

.field zzfyx:Ljava/lang/Long;

.field zzfyy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgr;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyt:Lcom/google/android/gms/internal/ads/zzcgr;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzamq()V
    .registers 4

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyw:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyx:Ljava/lang/Long;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyy:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    return-void

    .line 40
    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyy:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyu:Lcom/google/android/gms/internal/ads/zzafo;

    if-nez v0, :cond_5

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyx:Ljava/lang/Long;

    if-nez v0, :cond_a

    return-void

    .line 16
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzamq()V

    .line 17
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyu:Lcom/google/android/gms/internal/ads/zzafo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafo;->onUnconfirmedClickCancelled()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbba;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyy:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_47

    .line 25
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyw:Ljava/lang/String;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyx:Ljava/lang/Long;

    if-nez p1, :cond_14

    goto :goto_44

    .line 27
    :cond_14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyw:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzbqd:Lcom/google/android/gms/common/util/Clock;

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyx:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    .line 31
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    .line 32
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyt:Lcom/google/android/gms/internal/ads/zzcgr;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgr;->zza(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzamq()V

    :cond_47
    :goto_47
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafo;)V
    .registers 5

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyu:Lcom/google/android/gms/internal/ads/zzafo;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyv:Lcom/google/android/gms/internal/ads/zzahc;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_d

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyt:Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcgr;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 8
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdm;-><init>(Lcom/google/android/gms/internal/ads/zzcdn;Lcom/google/android/gms/internal/ads/zzafo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyv:Lcom/google/android/gms/internal/ads/zzahc;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyt:Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcgr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    return-void
.end method

.method public final zzamp()Lcom/google/android/gms/internal/ads/zzafo;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzfyu:Lcom/google/android/gms/internal/ads/zzafo;

    return-object v0
.end method
