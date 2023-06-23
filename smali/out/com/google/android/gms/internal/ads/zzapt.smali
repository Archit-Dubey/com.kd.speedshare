.class public final Lcom/google/android/gms/internal/ads/zzapt;
.super Lcom/google/android/gms/internal/ads/zzaqd;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# static fields
.field private static final zzdlv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private final lock:Ljava/lang/Object;

.field private width:I

.field private zzdeg:Lcom/google/android/gms/internal/ads/zzaqc;

.field private final zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzdll:Landroid/app/Activity;

.field private zzdlw:Ljava/lang/String;

.field private zzdlx:Z

.field private zzdly:I

.field private zzdlz:I

.field private zzdma:I

.field private zzdmb:I

.field private zzdmc:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzdmd:Landroid/widget/ImageView;

.field private zzdme:Landroid/widget/LinearLayout;

.field private zzdmf:Landroid/widget/PopupWindow;

.field private zzdmg:Landroid/widget/RelativeLayout;

.field private zzdmh:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bottom-center"

    aput-object v2, v0, v1

    .line 219
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapt;->zzdlv:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzaqc;)V
    .registers 5

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Ljava/lang/String;)V

    const-string v0, "top-right"

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdlw:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdlx:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->lock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzl()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdeg:Lcom/google/android/gms/internal/ads/zzaqc;

    return-void
.end method


# virtual methods
.method public final zza(IIZ)V
    .registers 4

    .line 207
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzapt;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 208
    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    .line 209
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    .line 211
    monitor-exit p3

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final zzac(Z)V
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4d

    .line 192
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 194
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    if-eqz v1, :cond_34

    .line 195
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmd:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmc:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbhg;)V

    :cond_34
    if-eqz p1, :cond_44

    const-string p1, "default"

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdy(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdeg:Lcom/google/android/gms/internal/ads/zzaqc;

    if-eqz p1, :cond_44

    .line 201
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdeg:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqc;->zzuh()V

    :cond_44
    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    .line 203
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    .line 204
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    .line 205
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdme:Landroid/widget/LinearLayout;

    .line 206
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public final zzg(Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzapt;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 16
    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 18
    monitor-exit v2

    return-void

    .line 19
    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 21
    monitor-exit v2

    return-void

    .line 22
    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 24
    monitor-exit v2

    return-void

    .line 25
    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "Cannot resize an expanded banner."

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 27
    monitor-exit v2

    return-void

    :cond_43
    const-string v3, "width"

    .line 29
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzem(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    :cond_62
    const-string v3, "height"

    .line 31
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzem(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    :cond_81
    const-string v3, "offsetX"

    .line 33
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzem(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    :cond_a0
    const-string v3, "offsetY"

    .line 35
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzem(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    :cond_bf
    const-string v3, "allowOffscreen"

    .line 37
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "allowOffscreen"

    .line 38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlx:Z

    :cond_db
    const-string v3, "customClosePosition"

    .line 39
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    .line 41
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlw:Ljava/lang/String;

    .line 43
    :cond_eb
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_f7

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    if-ltz v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    :goto_f8
    if-nez v0, :cond_101

    const-string v0, "Invalid width and height options. Cannot resize."

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 46
    monitor-exit v2

    return-void

    .line 47
    :cond_101
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4b4

    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_111

    goto/16 :goto_4b4

    .line 53
    :cond_111
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaye;->zze(Landroid/app/Activity;)[I

    move-result-object v5

    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/app/Activity;)[I

    move-result-object v6

    .line 55
    aget v7, v5, v4

    .line 56
    aget v5, v5, v3

    .line 57
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, -0x1

    const/4 v13, 0x2

    const/16 v14, 0x32

    if-lt v8, v14, :cond_233

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    if-le v8, v7, :cond_13a

    goto/16 :goto_233

    .line 60
    :cond_13a
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    if-lt v8, v14, :cond_22d

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    if-le v8, v5, :cond_144

    goto/16 :goto_22d

    .line 63
    :cond_144
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    if-ne v8, v5, :cond_153

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    if-ne v5, v7, :cond_153

    const-string v5, "Cannot resize to a full-screen ad."

    .line 64
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    goto/16 :goto_238

    .line 66
    :cond_153
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlx:Z

    if-eqz v5, :cond_22b

    .line 68
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlw:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_4be

    goto :goto_19d

    :sswitch_161
    const-string v8, "top-center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const/4 v5, 0x1

    goto :goto_19e

    :sswitch_16b
    const-string v8, "bottom-center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const/4 v5, 0x4

    goto :goto_19e

    :sswitch_175
    const-string v8, "bottom-right"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const/4 v5, 0x5

    goto :goto_19e

    :sswitch_17f
    const-string v8, "bottom-left"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const/4 v5, 0x3

    goto :goto_19e

    :sswitch_189
    const-string v8, "top-left"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const/4 v5, 0x0

    goto :goto_19e

    :sswitch_193
    const-string v8, "center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    const/4 v5, 0x2

    goto :goto_19e

    :cond_19d
    :goto_19d
    const/4 v5, -0x1

    :goto_19e
    if-eqz v5, :cond_212

    if-eq v5, v3, :cond_202

    if-eq v5, v13, :cond_1eb

    if-eq v5, v11, :cond_1dc

    if-eq v5, v10, :cond_1c9

    if-eq v5, v9, :cond_1b8

    .line 87
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v14

    .line 88
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    goto :goto_21b

    .line 84
    :cond_1b8
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v14

    .line 85
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    goto :goto_1e8

    .line 81
    :cond_1c9
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    .line 82
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    goto :goto_1e8

    .line 78
    :cond_1dc
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    .line 79
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    :goto_1e8
    add-int/2addr v8, v15

    sub-int/2addr v8, v14

    goto :goto_21c

    .line 75
    :cond_1eb
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    .line 76
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    div-int/2addr v15, v13

    add-int/2addr v8, v15

    add-int/lit8 v8, v8, -0x19

    goto :goto_21c

    .line 72
    :cond_202
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    .line 73
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    goto :goto_21b

    .line 69
    :cond_212
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v5, v8

    .line 70
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    :goto_21b
    add-int/2addr v8, v15

    :goto_21c
    if-ltz v5, :cond_238

    add-int/2addr v5, v14

    if-gt v5, v7, :cond_238

    .line 89
    aget v5, v6, v4

    if-lt v8, v5, :cond_238

    add-int/2addr v8, v14

    aget v5, v6, v3

    if-le v8, v5, :cond_22b

    goto :goto_238

    :cond_22b
    const/4 v5, 0x1

    goto :goto_239

    :cond_22d
    :goto_22d
    const-string v5, "Height is too small or too large."

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    goto :goto_238

    :cond_233
    :goto_233
    const-string v5, "Width is too small or too large."

    .line 58
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :cond_238
    :goto_238
    const/4 v5, 0x0

    :goto_239
    if-nez v5, :cond_23d

    const/4 v5, 0x0

    goto :goto_299

    .line 94
    :cond_23d
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlx:Z

    if-eqz v5, :cond_252

    new-array v5, v13, [I

    .line 95
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    add-int/2addr v6, v7

    aput v6, v5, v3

    goto :goto_299

    .line 96
    :cond_252
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaye;->zze(Landroid/app/Activity;)[I

    move-result-object v5

    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/app/Activity;)[I

    move-result-object v6

    .line 98
    aget v5, v5, v4

    .line 99
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdma:I

    add-int/2addr v7, v8

    .line 100
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmb:I

    add-int/2addr v8, v15

    if-gez v7, :cond_276

    const/4 v7, 0x0

    goto :goto_27f

    .line 103
    :cond_276
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    add-int/2addr v15, v7

    if-le v15, v5, :cond_27f

    .line 104
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    sub-int v7, v5, v7

    .line 105
    :cond_27f
    :goto_27f
    aget v5, v6, v4

    if-ge v8, v5, :cond_286

    .line 106
    aget v8, v6, v4

    goto :goto_293

    .line 107
    :cond_286
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    add-int/2addr v5, v8

    aget v15, v6, v3

    if-le v5, v15, :cond_293

    .line 108
    aget v5, v6, v3

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    sub-int v8, v5, v6

    :cond_293
    :goto_293
    new-array v5, v13, [I

    aput v7, v5, v4

    aput v8, v5, v3

    :goto_299
    if-nez v5, :cond_2a2

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 112
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 113
    monitor-exit v2

    return-void

    .line 114
    :cond_2a2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result v6

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result v7

    .line 116
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_4ad

    .line 117
    instance-of v15, v8, Landroid/view/ViewGroup;

    if-eqz v15, :cond_4ad

    .line 118
    move-object v15, v8

    check-cast v15, Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    if-nez v9, :cond_305

    .line 120
    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    .line 121
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaye;->zzm(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 122
    new-instance v9, Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-direct {v9, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmd:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmc:Lcom/google/android/gms/internal/ads/zzbhg;

    .line 125
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmd:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_30a

    .line 127
    :cond_305
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 130
    :goto_30a
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    .line 131
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 132
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    .line 134
    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 135
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 136
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlx:Z

    if-nez v9, :cond_33b

    const/4 v9, 0x1

    goto :goto_33c

    :cond_33b
    const/4 v9, 0x0

    :goto_33c
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 137
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 138
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v9

    .line 139
    invoke-virtual {v8, v9, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 140
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdme:Landroid/widget/LinearLayout;

    .line 141
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result v9

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v8, v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdlw:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_4d8

    goto :goto_3af

    :sswitch_374
    const-string v14, "top-center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3af

    const/4 v12, 0x1

    goto :goto_3af

    :sswitch_37e
    const-string v14, "bottom-center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3af

    const/4 v12, 0x4

    goto :goto_3af

    :sswitch_388
    const-string v14, "bottom-right"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3af

    const/4 v12, 0x5

    goto :goto_3af

    :sswitch_392
    const-string v14, "bottom-left"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3af

    const/4 v12, 0x3

    goto :goto_3af

    :sswitch_39c
    const-string v14, "top-left"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3af

    const/4 v12, 0x0

    goto :goto_3af

    :sswitch_3a6
    const-string v14, "center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3af

    const/4 v12, 0x2

    :cond_3af
    :goto_3af
    const/16 v9, 0x9

    const/16 v14, 0xa

    if-eqz v12, :cond_3ef

    const/16 v15, 0xe

    if-eq v12, v3, :cond_3e8

    if-eq v12, v13, :cond_3e2

    const/16 v13, 0xc

    if-eq v12, v11, :cond_3db

    if-eq v12, v10, :cond_3d4

    const/16 v9, 0xb

    const/4 v10, 0x5

    if-eq v12, v10, :cond_3cd

    .line 162
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3f5

    .line 159
    :cond_3cd
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3f5

    .line 156
    :cond_3d4
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3f5

    .line 153
    :cond_3db
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3f5

    :cond_3e2
    const/16 v9, 0xd

    .line 151
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3f5

    .line 148
    :cond_3e8
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3f5

    .line 145
    :cond_3ef
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    :goto_3f5
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdme:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaps;

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Lcom/google/android/gms/internal/ads/zzapt;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdme:Landroid/widget/LinearLayout;

    const-string v10, "Close button"

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdme:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_40d
    .catchall {:try_start_7 .. :try_end_40d} :catchall_4bb

    .line 167
    :try_start_40d
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    .line 168
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    aget v10, v5, v4

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result v9

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    aget v11, v5, v3

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzbaq;->zzc(Landroid/content/Context;I)I

    move-result v10

    .line 171
    invoke-virtual {v8, v0, v4, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_42c
    .catch Ljava/lang/RuntimeException; {:try_start_40d .. :try_end_42c} :catch_465
    .catchall {:try_start_40d .. :try_end_42c} :catchall_4bb

    .line 181
    :try_start_42c
    aget v0, v5, v4

    aget v8, v5, v3

    .line 182
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdeg:Lcom/google/android/gms/internal/ads/zzaqc;

    if-eqz v9, :cond_43d

    .line 183
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdeg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    invoke-interface {v9, v0, v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqc;->zza(IIII)V

    .line 184
    :cond_43d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzbhg;->zzq(II)Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbhg;)V

    .line 185
    aget v0, v5, v4

    aget v3, v5, v3

    .line 186
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdll:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaye;->zzf(Landroid/app/Activity;)[I

    move-result-object v5

    aget v4, v5, v4

    sub-int/2addr v3, v4

    .line 187
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzapt;->width:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapt;->height:I

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqd;->zzb(IIII)V

    const-string v0, "resized"

    .line 188
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdy(Ljava/lang/String;)V

    .line 189
    monitor-exit v2

    return-void

    :catch_465
    move-exception v0

    const-string v3, "Cannot show popup window: "

    .line 174
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_47b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_480

    :cond_47b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_480
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 175
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmg:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 176
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4ab

    .line 177
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmh:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapt;->zzdmc:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbhg;)V

    .line 180
    :cond_4ab
    monitor-exit v2

    return-void

    :cond_4ad
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 128
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 129
    monitor-exit v2

    return-void

    :cond_4b4
    :goto_4b4
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdw(Ljava/lang/String;)V

    .line 50
    monitor-exit v2

    return-void

    :catchall_4bb
    move-exception v0

    .line 189
    monitor-exit v2
    :try_end_4bd
    .catchall {:try_start_42c .. :try_end_4bd} :catchall_4bb

    throw v0

    :sswitch_data_4be
    .sparse-switch
        -0x514d33ab -> :sswitch_193
        -0x3c587281 -> :sswitch_189
        -0x27103597 -> :sswitch_17f
        0x455fe3fa -> :sswitch_175
        0x4ccee637 -> :sswitch_16b
        0x68a23bcd -> :sswitch_161
    .end sparse-switch

    :sswitch_data_4d8
    .sparse-switch
        -0x514d33ab -> :sswitch_3a6
        -0x3c587281 -> :sswitch_39c
        -0x27103597 -> :sswitch_392
        0x455fe3fa -> :sswitch_388
        0x4ccee637 -> :sswitch_37e
        0x68a23bcd -> :sswitch_374
    .end sparse-switch
.end method

.method public final zzi(II)V
    .registers 3

    .line 215
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdly:I

    .line 216
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdlz:I

    return-void
.end method

.method public final zzuf()Z
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapt;->zzdmf:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 214
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
