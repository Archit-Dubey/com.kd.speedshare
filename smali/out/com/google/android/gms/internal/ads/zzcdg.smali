.class public final Lcom/google/android/gms/internal/ads/zzcdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

.field private final zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

.field private final zzflp:Ljava/util/concurrent/Executor;

.field private final zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

.field private final zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

.field private final zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

.field private final zzfwi:Lcom/google/android/gms/internal/ads/zzccj;

.field private final zzfyi:Lcom/google/android/gms/internal/ads/zzcdo;

.field private final zzfyj:Lcom/google/android/gms/internal/ads/zzcdw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxx;Lcom/google/android/gms/internal/ads/zzdla;Lcom/google/android/gms/internal/ads/zzcco;Lcom/google/android/gms/internal/ads/zzcck;Lcom/google/android/gms/internal/ads/zzcdo;Lcom/google/android/gms/internal/ads/zzcdw;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzccj;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzdla;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfyi:Lcom/google/android/gms/internal/ads/zzcdo;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfyj:Lcom/google/android/gms/internal/ads/zzcdw;

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzflp:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcdg;->executor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwi:Lcom/google/android/gms/internal/ads/zzccj;

    return-void
.end method

.method private static zza(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 7

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_25

    const/4 v2, 0x2

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eq p1, v2, :cond_1e

    const/4 v2, 0x3

    if-eq p1, v2, :cond_17

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 19
    :cond_17
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 22
    :cond_1e
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 16
    :cond_25
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcdg;Lcom/google/android/gms/internal/ads/zzcee;[Ljava/lang/String;)Z
    .registers 3

    .line 202
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcdg;->zza(Lcom/google/android/gms/internal/ads/zzcee;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcee;[Ljava/lang/String;)Z
    .registers 6

    .line 58
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcee;->zzami()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 61
    :cond_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_19

    aget-object v3, p1, v2

    .line 62
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcee;)V
    .registers 4

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzflp:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Lcom/google/android/gms/internal/ads/zzcdg;Lcom/google/android/gms/internal/ads/zzcee;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;)Z
    .registers 6

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcck;->zzalk()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_1e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcro:Lcom/google/android/gms/internal/ads/zzaag;

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_39

    .line 75
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_3f

    .line 76
    :cond_39
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 77
    :goto_3f
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic zzb(Landroid/view/ViewGroup;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 80
    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcck;->zzalk()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_53

    const/4 v1, 0x2

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcck;->zzalg()I

    move-result v2

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    .line 82
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcck;->zzalg()I

    move-result v1

    if-ne v0, v1, :cond_20

    goto :goto_40

    :cond_20
    const/4 v0, 0x6

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcck;->zzalg()I

    move-result v1

    if-ne v0, v1, :cond_53

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdla;->zzhaz:Ljava/lang/String;

    const-string v2, "2"

    .line 89
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxx;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdla;->zzhaz:Ljava/lang/String;

    const-string v2, "1"

    .line 92
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxx;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_53

    .line 83
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzdyn:Lcom/google/android/gms/internal/ads/zzaxx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfpv:Lcom/google/android/gms/internal/ads/zzdla;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdla;->zzhaz:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcck;->zzalg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxx;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcee;)V
    .registers 3

    if-eqz p1, :cond_2a

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfyi:Lcom/google/android/gms/internal/ads/zzcdo;

    if-eqz v0, :cond_2a

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzaml()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_2a

    .line 31
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcco;->zzals()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 33
    :cond_16
    :try_start_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzaml()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfyi:Lcom/google/android/gms/internal/ads/zzcdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdo;->zzamr()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_23
    .catch Lcom/google/android/gms/internal/ads/zzbfz; {:try_start_16 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 36
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcee;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 40
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzahk()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcco;->zzfxi:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbae;->zza(Lcom/google/android/gms/internal/ads/zzdkk;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    .line 43
    :cond_16
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_20

    const-string p1, "Activity context is needed for policy validator."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfyj:Lcom/google/android/gms/internal/ads/zzcdw;

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzaml()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_4f

    :cond_2b
    :try_start_2b
    const-string v1, "window"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 49
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzaml()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfyj:Lcom/google/android/gms/internal/ads/zzcdw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcco;->zzfxi:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 51
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdw;->zza(Lcom/google/android/gms/internal/ads/zzdkk;Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbae;->zzyb()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 53
    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_48
    .catch Lcom/google/android/gms/internal/ads/zzbfz; {:try_start_2b .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 56
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzcee;)V
    .registers 11

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcco;->zzalu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwa:Lcom/google/android/gms/internal/ads/zzcco;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcco;->zzalt()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    const/4 v3, 0x0

    if-eqz v0, :cond_39

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "1098"

    aput-object v5, v4, v1

    const-string v5, "3011"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v0, :cond_39

    .line 102
    aget-object v6, v4, v5

    .line 103
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzcee;->zzge(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_36

    .line 104
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_36

    .line 105
    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_3a

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_39
    move-object v6, v3

    :goto_3a
    if-eqz v6, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    .line 111
    :goto_3f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzahk()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 112
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcck;->zzalh()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6b

    .line 114
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcck;->zzalh()Landroid/view/View;

    move-result-object v4

    .line 115
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzdkn:Lcom/google/android/gms/internal/ads/zzadj;

    if-nez v7, :cond_60

    goto :goto_9d

    :cond_60
    if-nez v0, :cond_9d

    .line 118
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzadj;->zzbnj:I

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzcdg;->zza(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9d

    .line 121
    :cond_6b
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcck;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object v7

    instance-of v7, v7, Lcom/google/android/gms/internal/ads/zzada;

    if-nez v7, :cond_77

    move-object v4, v3

    goto :goto_9d

    .line 123
    :cond_77
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcck;->zzsd()Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzada;

    if-nez v0, :cond_88

    .line 125
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzada;->zzrw()I

    move-result v8

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zzcdg;->zza(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 126
    :cond_88
    new-instance v8, Lcom/google/android/gms/internal/ads/zzadd;

    invoke-direct {v8, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzadd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzada;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 127
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaav;->zzcrl:Lcom/google/android/gms/internal/ads/zzaag;

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v4, v8

    :cond_9d
    :goto_9d
    const/4 v5, -0x1

    if-eqz v4, :cond_e2

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_b1

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b1
    if-eqz v0, :cond_ba

    .line 136
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_db

    .line 138
    :cond_ba
    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzahk()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/ads/formats/AdChoicesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/formats/AdChoicesView;->addView(Landroid/view/View;)V

    .line 141
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzaml()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_db

    .line 143
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    :cond_db
    :goto_db
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzamk()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzcee;->zza(Ljava/lang/String;Landroid/view/View;Z)V

    .line 147
    :cond_e2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcde;->zzfxw:[Ljava/lang/String;

    array-length v2, v0

    :goto_e5
    if-ge v1, v2, :cond_f7

    aget-object v4, v0, v1

    .line 148
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzcee;->zzge(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 149
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_f4

    .line 150
    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_f8

    :cond_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_f7
    move-object v4, v3

    .line 154
    :goto_f8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdi;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gms/internal/ads/zzcdi;-><init>(Lcom/google/android/gms/internal/ads/zzcdg;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v4, :cond_1b0

    .line 156
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcdg;->zza(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcck;->zzall()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    if-eqz v0, :cond_1b0

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcck;->zzall()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdl;

    invoke-direct {v1, p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzcdl;-><init>(Lcom/google/android/gms/internal/ads/zzcdg;Lcom/google/android/gms/internal/ads/zzcee;Landroid/view/ViewGroup;)V

    .line 161
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzadh;)V

    return-void

    .line 162
    :cond_121
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 163
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzahk()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12f

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_130

    :cond_12f
    move-object v0, v3

    :goto_130
    if-eqz v0, :cond_1b0

    .line 167
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcrk:Lcom/google/android/gms/internal/ads/zzaag;

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfwi:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzccj;->zzsn()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v1

    if-eqz v1, :cond_1b0

    .line 172
    :try_start_14c
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzsa()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_14c .. :try_end_150} :catch_151

    goto :goto_163

    :catch_151
    const-string p1, "Could not get main image drawable"

    .line 175
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_157
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdg;->zzfuu:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcck;->zzali()Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v1

    if-eqz v1, :cond_1b0

    .line 179
    :try_start_15f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadt;->zzry()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_163
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_163} :catch_1ab

    :goto_163
    if-eqz v1, :cond_1b0

    .line 185
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1b0

    .line 187
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_17b

    .line 190
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcee;->zzamn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    :cond_17b
    if-eqz v3, :cond_19a

    .line 191
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcvo:Lcom/google/android/gms/internal/ads/zzaag;

    .line 193
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_190

    goto :goto_19a

    .line 197
    :cond_190
    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView$ScaleType;

    .line 198
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_19f

    .line 195
    :cond_19a
    :goto_19a
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    :goto_19f
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1b0

    :catch_1ab
    const-string p1, "Could not get drawable from image"

    .line 182
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :cond_1b0
    :goto_1b0
    return-void
.end method
