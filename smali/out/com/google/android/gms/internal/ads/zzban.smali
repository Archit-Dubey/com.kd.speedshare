.class public final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final view:Landroid/view/View;

.field private zzbrm:Z

.field private zzbvq:Z

.field private zzeci:Landroid/app/Activity;

.field private zzecj:Z

.field private zzeck:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzecl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeci:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzban;->view:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeck:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecl:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static zzi(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 46
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    .line 49
    :cond_b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_12

    return-object v0

    .line 52
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method private final zzyf()V
    .registers 3

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecj:Z

    if-nez v0, :cond_22

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeck:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1f

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeci:Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzban;->zzi(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    :cond_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlt()Lcom/google/android/gms/internal/ads/zzbbv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeck:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbv;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1f
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecj:Z

    :cond_22
    return-void
.end method

.method private final zzyg()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeci:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 35
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecj:Z

    if-eqz v1, :cond_1c

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeck:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_19

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzban;->zzi(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_19
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzecj:Z

    :cond_1c
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzbrm:Z

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzbvq:Z

    if-eqz v0, :cond_a

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzban;->zzyf()V

    :cond_a
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzbrm:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzban;->zzyg()V

    return-void
.end method

.method public final zzh(Landroid/app/Activity;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzeci:Landroid/app/Activity;

    return-void
.end method

.method public final zzyd()V
    .registers 2

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzbvq:Z

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzbrm:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzban;->zzyf()V

    :cond_a
    return-void
.end method

.method public final zzye()V
    .registers 2

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzbvq:Z

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzban;->zzyg()V

    return-void
.end method
