.class public final Lcom/google/android/gms/internal/ads/zzcej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccs;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

.field private final zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

.field private final zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

.field private final zzfuv:Lcom/google/android/gms/internal/ads/zzbtc;

.field private final zzfuw:Lcom/google/android/gms/internal/ads/zzbsk;

.field private zzfva:Z

.field private zzfvd:Z

.field private final zzfzv:Lcom/google/android/gms/internal/ads/zzana;

.field private final zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

.field private final zzfzx:Lcom/google/android/gms/internal/ads/zzang;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzanf;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzbtc;Lcom/google/android/gms/internal/ads/zzbsk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zzdla;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfva:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfvd:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuv:Lcom/google/android/gms/internal/ads/zzbtc;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuw:Lcom/google/android/gms/internal/ads/zzbsk;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzvr:Landroid/content/Context;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 12
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    return-void
.end method

.method private final zzad(Landroid/view/View;)V
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzang;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzang;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuw:Lcom/google/android/gms/internal/ads/zzbsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsk;->onAdClicked()V

    return-void

    .line 69
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzana;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_36

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzana;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuw:Lcom/google/android/gms/internal/ads/zzbsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsk;->onAdClicked()V

    return-void

    .line 72
    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanf;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_50

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanf;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuw:Lcom/google/android/gms/internal/ads/zzbsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsk;->onAdClicked()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_51

    :cond_50
    return-void

    :catch_51
    move-exception p1

    const-string v0, "Failed to call handleClick"

    .line 77
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzb(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 43
    :cond_8
    monitor-enter p0

    .line 44
    :try_start_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_11

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 49
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 1

    return-void
.end method

.method public final destroy()V
    .registers 1

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdkk;->zzdiu:Z

    return v0
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 4

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 62
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfvd:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdkk;->zzdiu:Z

    if-eqz p2, :cond_b

    return-void

    .line 64
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcej;->zzad(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p2, :cond_e

    .line 53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzang;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 54
    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz p2, :cond_18

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzana;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 56
    :cond_18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    if-eqz p2, :cond_21

    .line 57
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzanf;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    return-void

    :catch_22
    move-exception p1

    const-string p2, "Failed to call untrackView"

    .line 60
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 92
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfva:Z

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkk;->zzgzw:Lorg/json/JSONObject;

    if-eqz p1, :cond_29

    .line 93
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfva:Z

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlg()Lcom/google/android/gms/internal/ads/zzaze;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzvr:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdkk;->zzgzw:Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdla;->zzhaz:Ljava/lang/String;

    .line 96
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaze;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfva:Z

    .line 97
    :cond_29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    .line 98
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzang;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_40

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzang;->recordImpression()V

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuv:Lcom/google/android/gms/internal/ads/zzbtc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtc;->onAdImpression()V

    return-void

    .line 101
    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    .line 102
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzana;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_57

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzana;->recordImpression()V

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuv:Lcom/google/android/gms/internal/ads/zzbtc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtc;->onAdImpression()V

    return-void

    .line 105
    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanf;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_6d

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanf;->recordImpression()V

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfuv:Lcom/google/android/gms/internal/ads/zzbtc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtc;->onAdImpression()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6d} :catch_6e

    :cond_6d
    return-void

    :catch_6e
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    .line 110
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcej;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcej;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    .line 19
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p4, :cond_1e

    .line 20
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzx:Lcom/google/android/gms/internal/ads/zzang;

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 22
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 23
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzang;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 24
    :cond_1e
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz p4, :cond_35

    .line 25
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 27
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 28
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzana;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzv:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzana;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 30
    :cond_35
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    if-eqz p4, :cond_4b

    .line 31
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 33
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 34
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanf;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfzw:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzanf;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4b} :catch_4c

    :cond_4b
    return-void

    :catch_4c
    move-exception p1

    const-string p2, "Failed to call trackView"

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 81
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfvd:Z

    if-nez p2, :cond_a

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfol:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdkk;->zzdiu:Z

    if-nez p2, :cond_16

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcej;->zzad(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxp;)V
    .registers 2

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 122
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 2

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzakv()V
    .registers 1

    return-void
.end method

.method public final zzakw()V
    .registers 2

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzakx()V
    .registers 1

    return-void
.end method

.method public final zzfy(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final zzi(Landroid/os/Bundle;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final zzsm()V
    .registers 2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzfvd:Z

    return-void
.end method
