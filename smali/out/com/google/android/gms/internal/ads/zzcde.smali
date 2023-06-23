.class public final Lcom/google/android/gms/internal/ads/zzcde;
.super Lcom/google/android/gms/internal/ads/zzadw;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzcee;


# static fields
.field public static final zzfxw:[Ljava/lang/String;


# instance fields
.field private zzbnm:Landroid/widget/FrameLayout;

.field private zzckd:Lcom/google/android/gms/internal/ads/zzado;

.field private zzdow:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzede:I

.field private zzenl:Z

.field private final zzfxv:Ljava/lang/String;

.field private zzfxx:Landroid/widget/FrameLayout;

.field private zzfxy:Lcom/google/android/gms/internal/ads/zzdvi;

.field private zzfxz:Landroid/view/View;

.field private zzfya:Lcom/google/android/gms/internal/ads/zzccd;

.field private zzfyb:Lcom/google/android/gms/internal/ads/zzqo;

.field private zzfyc:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzfyd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2011"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1009"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3010"

    aput-object v2, v0, v1

    .line 146
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadw;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyc:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzbnm:Landroid/widget/FrameLayout;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzede:I

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.google.android.gms.ads.formats.NativeContentAdView"

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    const-string p2, "1007"

    goto :goto_3b

    :cond_29
    const-string p3, "com.google.android.gms.ads.formats.NativeAppInstallAdView"

    .line 12
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_34

    const-string p2, "2009"

    goto :goto_3b

    :cond_34
    const-string p3, "com.google.android.gms.ads.formats.UnifiedNativeAdView"

    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p2, "3012"

    .line 16
    :goto_3b
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxv:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlt()Lcom/google/android/gms/internal/ads/zzbbv;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlt()Lcom/google/android/gms/internal/ads/zzbbv;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbbv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbf;->zzedl:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxy:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 21
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyb:Lcom/google/android/gms/internal/ads/zzqo;

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final declared-synchronized zzamg()V
    .registers 3

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxy:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzcde;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 63
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    .line 64
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v0, :cond_7

    .line 65
    monitor-exit p0

    return-void

    .line 66
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/android/gms/internal/ads/zzcee;)V

    .line 68
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzbnm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 72
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;

    .line 73
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 74
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzbnm:Landroid/widget/FrameLayout;

    .line 75
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxz:Landroid/view/View;

    .line 76
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyb:Lcom/google/android/gms/internal/ads/zzqo;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_31

    .line 78
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .registers 9

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    if-eqz v0, :cond_1e

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->cancelUnconfirmedClick()V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 84
    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzamh()Ljava/util/Map;

    move-result-object v4

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzami()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 88
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onGlobalLayout()V
    .registers 6

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    if-eqz v0, :cond_1e

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 97
    check-cast v1, Landroid/widget/FrameLayout;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzamh()Ljava/util/Map;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzami()Ljava/util/Map;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 101
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzccd;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 103
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onScrollChanged()V
    .registers 6

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    if-eqz v0, :cond_1e

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 107
    check-cast v1, Landroid/widget/FrameLayout;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzamh()Ljava/util/Map;

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzami()Ljava/util/Map;

    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 111
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzccd;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 113
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    if-eqz v0, :cond_e

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    .line 92
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    :cond_e
    const/4 p1, 0x0

    .line 93
    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    if-eqz v0, :cond_7

    .line 47
    monitor-exit p0

    return-void

    .line 48
    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzccd;

    if-nez v0, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_48

    .line 51
    monitor-exit p0

    return-void

    .line 52
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    if-eqz v0, :cond_1f

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/android/gms/internal/ads/zzcee;)V

    .line 54
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcde;->zzamg()V

    .line 55
    check-cast p1, Lcom/google/android/gms/internal/ads/zzccd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    .line 56
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Lcom/google/android/gms/internal/ads/zzcee;)V

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaa(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzbnm:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzab(Landroid/view/View;)V

    .line 59
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyd:Z

    if-eqz p1, :cond_46

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccd;->zzald()Lcom/google/android/gms/internal/ads/zzccj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzckd:Lcom/google/android/gms/internal/ads/zzado;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzado;)V
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_48

    .line 61
    :cond_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzado;)V
    .registers 3

    monitor-enter p0

    .line 130
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    .line 131
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 132
    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyd:Z

    .line 133
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzckd:Lcom/google/android/gms/internal/ads/zzado;

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    if-eqz v0, :cond_19

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzald()Lcom/google/android/gms/internal/ads/zzccj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzado;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1b

    .line 136
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 5

    monitor-enter p0

    .line 28
    :try_start_1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-eqz p3, :cond_7

    .line 29
    monitor-exit p0

    return-void

    :cond_7
    if-nez p2, :cond_10

    .line 31
    :try_start_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_41

    monitor-exit p0

    return-void

    .line 32
    :cond_10
    :try_start_10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "1098"

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3f

    const-string p3, "3011"

    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_3f

    .line 36
    :cond_2b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzede:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzdg(I)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 37
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_36
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 39
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_41

    .line 40
    monitor-exit p0

    return-void

    .line 35
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzahk()Landroid/view/View;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final declared-synchronized zzamh()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzami()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzamj()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 116
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzamk()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxv:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaml()Landroid/widget/FrameLayout;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzbnm:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final zzamm()Lcom/google/android/gms/internal/ads/zzqo;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyb:Lcom/google/android/gms/internal/ads/zzqo;

    return-object v0
.end method

.method public final zzamn()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyc:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method final synthetic zzamo()V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxz:Landroid/view/View;

    if-nez v0, :cond_1b

    .line 141
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxz:Landroid/view/View;

    .line 142
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxz:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxz:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    .line 26
    :try_start_1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcde;->zza(Ljava/lang/String;Landroid/view/View;Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 27
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .registers 3

    monitor-enter p0

    .line 79
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzcr(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    .line 41
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcde;->zzge(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfya:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccd;->setClickConfirmingView(Landroid/view/View;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 121
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxx:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcde;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    .line 122
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    .line 123
    monitor-exit p0

    return-void

    .line 124
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzfyc:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 125
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzge(Ljava/lang/String;)Landroid/view/View;
    .registers 4

    monitor-enter p0

    .line 42
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 43
    monitor-exit p0

    return-object v1

    .line 44
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcde;->zzdow:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_1c

    if-nez p1, :cond_14

    .line 45
    monitor-exit p0

    return-object v1

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
