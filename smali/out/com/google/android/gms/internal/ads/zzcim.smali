.class public final Lcom/google/android/gms/internal/ads/zzcim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private zzgcw:Landroid/widget/PopupWindow;

.field private zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;
    .registers 7

    .line 19
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 20
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    if-eqz v0, :cond_4c

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_4c

    .line 23
    :cond_17
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    .line 25
    :cond_21
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v2, p1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 28
    new-instance p0, Landroid/widget/PopupWindow;

    const/4 p1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, p1, p1, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 30
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string p1, "Displaying the 1x1 popup off the screen."

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 32
    :try_start_44
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c

    return-object p0

    :catch_4c
    :cond_4c
    :goto_4c
    return-object v1
.end method


# virtual methods
.method public final zzani()V
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzvr:Landroid/content/Context;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgcw:Landroid/widget/PopupWindow;

    if-nez v1, :cond_9

    goto :goto_2c

    .line 9
    :cond_9
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzvr:Landroid/content/Context;

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgcw:Landroid/widget/PopupWindow;

    return-void

    .line 13
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgcw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgcw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    :cond_28
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzvr:Landroid/content/Context;

    .line 16
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgcw:Landroid/widget/PopupWindow;

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final zzc(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_19

    .line 4
    :cond_d
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcim;->zzd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgcw:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 5
    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzvr:Landroid/content/Context;

    :cond_19
    :goto_19
    return-void
.end method
