.class final Lcom/google/android/gms/internal/ads/zzbgd;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzbfn;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private zzacv:Ljava/lang/String;

.field private final zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

.field private final zzbqy:Landroid/view/WindowManager;

.field private zzdmt:I

.field private zzdmu:I

.field private zzdog:Z

.field private zzdpt:Ljava/lang/String;

.field private zzdxn:Ljava/lang/Boolean;

.field private zzehs:Lcom/google/android/gms/internal/ads/zzabg;

.field private final zzelk:Lcom/google/android/gms/internal/ads/zztm;

.field private final zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

.field private final zzemz:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzena:Lcom/google/android/gms/ads/internal/zzi;

.field private final zzenb:Lcom/google/android/gms/ads/internal/zza;

.field private final zzenc:F

.field private final zzend:Lcom/google/android/gms/internal/ads/zzso;

.field private final zzene:Z

.field private zzenf:Z

.field private zzeng:Z

.field private zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

.field private zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzenj:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzenl:Z

.field private zzenm:Z

.field private zzenn:Z

.field private zzeno:I

.field private zzenp:Z

.field private zzenq:Z

.field private zzenr:Lcom/google/android/gms/internal/ads/zzbgh;

.field private zzens:Z

.field private zzent:Z

.field private zzenu:Lcom/google/android/gms/internal/ads/zzadh;

.field private zzenv:Lcom/google/android/gms/internal/ads/zzadc;

.field private zzenw:Lcom/google/android/gms/internal/ads/zzsa;

.field private zzenx:I

.field private zzeny:I

.field private zzenz:Lcom/google/android/gms/internal/ads/zzabg;

.field private zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

.field private zzeob:Lcom/google/android/gms/internal/ads/zzabj;

.field private zzeoc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzeod:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzeoe:Z

.field private zzeof:Lcom/google/android/gms/internal/ads/zzban;

.field private zzeog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbes;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxc:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhd;Lcom/google/android/gms/internal/ads/zzbhg;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzso;Z)V
    .registers 16

    .line 3
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    .line 4
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenf:Z

    .line 5
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeng:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenp:Z

    .line 7
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenq:Z

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdpt:Ljava/lang/String;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmu:I

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmt:I

    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->maxWidth:I

    .line 12
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->maxHeight:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzacv:Ljava/lang/String;

    .line 16
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenm:Z

    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeno:I

    .line 18
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemz:Lcom/google/android/gms/internal/ads/zzeg;

    .line 19
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    .line 21
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenb:Lcom/google/android/gms/ads/internal/zza;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzbqy:Landroid/view/WindowManager;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzbqy:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    .line 24
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    .line 25
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    .line 27
    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzene:Z

    .line 28
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzbgd;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 30
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 31
    :try_start_59
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_5c
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_63

    :catch_5d
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    .line 34
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_63
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 37
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 38
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_76

    const/4 p3, 0x2

    .line 39
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 40
    :cond_76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object p3

    iget-object p4, p7, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/ads/zzayj;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 42
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbgd;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzaci()V

    .line 44
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzc(Lcom/google/android/gms/internal/ads/zzbfn;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgd;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9f
    const-string p2, "accessibility"

    .line 46
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    .line 47
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 48
    new-instance p2, Lcom/google/android/gms/internal/ads/zzban;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    .line 49
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacm()V

    .line 52
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabj;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzabi;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzacv:Ljava/lang/String;

    const-string p6, "make_wv"

    invoke-direct {p3, v0, p6, p5}, Lcom/google/android/gms/internal/ads/zzabi;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/google/android/gms/internal/ads/zzabi;->zzc(Lcom/google/android/gms/internal/ads/zzabi;)V

    .line 54
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzabd;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    .line 55
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    const-string p5, "native:view_create"

    invoke-virtual {p3, p5, p2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    .line 56
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

    .line 57
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenz:Lcom/google/android/gms/internal/ads/zzabg;

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzayj;->zzbg(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwb()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgd;)I
    .registers 1

    .line 675
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeny:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgd;I)I
    .registers 2

    .line 676
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeny:I

    return p1
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .registers 3

    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdxn:Ljava/lang/Boolean;

    .line 168
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 169
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_c
    move-exception p1

    .line 168
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method private final declared-synchronized zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 145
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 146
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzty$zzi$zza;)V
    .registers 5

    .line 668
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzae;->zzpe()Lcom/google/android/gms/internal/ads/zzty$zzae$zza;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzty$zzae$zza;->zzpd()Z

    move-result v1

    if-eq v1, p0, :cond_d

    .line 670
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzty$zzae$zza;->zzw(Z)Lcom/google/android/gms/internal/ads/zzty$zzae$zza;

    .line 672
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzty$zzae$zza;->zzcw(I)Lcom/google/android/gms/internal/ads/zzty$zzae$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzty$zzae;

    .line 673
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzty$zzi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzty$zzae;)Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    return-void
.end method

.method private final zzacf()Z
    .registers 11

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 70
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabt()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 74
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_3c

    goto :goto_5c

    .line 82
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(Landroid/app/Activity;)[I

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_5e

    :cond_5c
    :goto_5c
    move v6, v4

    move v7, v5

    .line 85
    :goto_5e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmt:I

    if-ne v0, v4, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmu:I

    if-ne v0, v5, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->maxWidth:I

    if-ne v0, v6, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->maxHeight:I

    if-ne v0, v7, :cond_6f

    return v1

    .line 87
    :cond_6f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmt:I

    if-ne v0, v4, :cond_77

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmu:I

    if-eq v0, v5, :cond_78

    :cond_77
    const/4 v1, 0x1

    .line 88
    :cond_78
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmt:I

    .line 89
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdmu:I

    .line 90
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbgd;->maxWidth:I

    .line 91
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbgd;->maxHeight:I

    .line 92
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzbqy:Landroid/view/WindowManager;

    .line 93
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 94
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized zzacg()V
    .registers 3

    monitor-enter p0

    .line 157
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvz()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdxn:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_27

    if-nez v0, :cond_25

    :try_start_d
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/Boolean;)V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1b} :catch_1d
    .catchall {:try_start_d .. :try_end_1b} :catchall_27

    .line 162
    monitor-exit p0

    return-void

    :catch_1d
    const/4 v0, 0x0

    .line 164
    :try_start_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/Boolean;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_27

    .line 165
    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzach()V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    .line 212
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabd;->zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzaci()V
    .registers 3

    monitor-enter p0

    .line 451
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenm:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 454
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 455
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacj()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 457
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzack()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    .line 459
    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 452
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzack()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzacj()V
    .registers 3

    monitor-enter p0

    .line 460
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 461
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 463
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenn:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 464
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzack()V
    .registers 3

    monitor-enter p0

    .line 465
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 466
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 468
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenn:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 469
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzacl()V
    .registers 3

    monitor-enter p0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;

    if-eqz v0, :cond_1f

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbes;

    .line 560
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbes;->release()V

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 563
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method private final zzacm()V
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    if-nez v0, :cond_5

    return-void

    .line 602
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 603
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvy()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 604
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvy()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaay;->zza(Lcom/google/android/gms/internal/ads/zzabi;)Z

    :cond_20
    return-void
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhg;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzso;Z)Lcom/google/android/gms/internal/ads/zzbgd;
    .registers 28

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhd;

    move-object v0, p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v14, Lcom/google/android/gms/internal/ads/zzbgd;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzbgd;-><init>(Lcom/google/android/gms/internal/ads/zzbhd;Lcom/google/android/gms/internal/ads/zzbhg;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzso;Z)V

    return-object v14
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgd;)V
    .registers 1

    .line 677
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final zzbd(Z)V
    .registers 4

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "isVisible"

    .line 632
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 633
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final declared-synchronized zzfq(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 113
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzfr(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 123
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4} :catch_c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_4} :catch_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_8
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 124
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    goto :goto_1f

    :catch_8
    move-exception p1

    goto :goto_f

    :catch_a
    move-exception p1

    goto :goto_f

    :catch_c
    move-exception p1

    goto :goto_f

    :catch_e
    move-exception p1

    .line 126
    :goto_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 127
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_6

    .line 128
    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0

    throw p1
.end method

.method private final zzfs(Ljava/lang/String;)V
    .registers 4

    .line 147
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_38

    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzvz()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacg()V

    .line 150
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzvz()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 152
    :cond_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_2f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfq(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_47
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfq(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzvz()Ljava/lang/Boolean;
    .registers 2

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdxn:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzwc()V
    .registers 2

    monitor-enter p0

    .line 502
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeoe:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeoe:Z

    .line 504
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zzwc()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 505
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    .line 470
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacm()V

    .line 471
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->zzye()V

    .line 472
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    .line 474
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onDestroy()V

    .line 475
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 476
    :cond_1a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenj:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 477
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->reset()V

    .line 478
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenl:Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_44

    if-eqz v0, :cond_27

    .line 479
    monitor-exit p0

    return-void

    .line 480
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzls()Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbep;->zzc(Lcom/google/android/gms/internal/ads/zzbdb;)Z

    .line 481
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacl()V

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenl:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 483
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 484
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 485
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfr(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_44

    .line 486
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzff(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    .line 106
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 107
    :cond_12
    monitor-exit p0

    return-void

    .line 108
    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    .line 109
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 487
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1e

    .line 488
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenl:Z

    if-nez v0, :cond_16

    .line 489
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->reset()V

    .line 490
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzls()Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbep;->zzc(Lcom/google/android/gms/internal/ads/zzbdb;)Z

    .line 491
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacl()V

    .line 492
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzwc()V

    .line 493
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    .line 494
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    .line 493
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    .line 496
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 497
    throw v0
.end method

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 571
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdpt:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public final declared-synchronized isDestroyed()Z
    .registers 2

    monitor-enter p0

    .line 506
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 131
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 132
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 134
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 136
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    if-nez v0, :cond_21

    .line 115
    :try_start_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_a} :catch_e
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_7 .. :try_end_a} :catch_c
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    .line 116
    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    .line 118
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 119
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_28

    .line 120
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 122
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .registers 4

    monitor-enter p0

    .line 396
    :try_start_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 398
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->onAttachedToWindow()V

    .line 399
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzens:Z

    .line 401
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 402
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfq;

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 403
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 404
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabt()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 406
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzent:Z

    if-nez v0, :cond_36

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 409
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 411
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 412
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 413
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzent:Z

    .line 414
    :cond_36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacf()Z

    const/4 v0, 0x1

    .line 415
    :cond_3a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzbd(Z)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 416
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 3

    .line 417
    monitor-enter p0

    .line 418
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->onDetachedFromWindow()V

    .line 420
    :cond_c
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 421
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 422
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 423
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_44

    .line 424
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 425
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabt()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 426
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 427
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 429
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 430
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 432
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 433
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 434
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzent:Z

    .line 435
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_49

    .line 436
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzbd(Z)V

    return-void

    :catchall_49
    move-exception v0

    .line 435
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 247
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    .line 252
    :catch_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 509
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1a

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 511
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 513
    :cond_1a
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 515
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 516
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfq;

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v0, 0x9

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 269
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    .line 272
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbgd;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_20
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2b

    .line 273
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbgd;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    cmpl-float v0, v1, v3

    if-lez v0, :cond_35

    .line 274
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbgd;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_35
    cmpg-float v0, v1, v3

    if-gez v0, :cond_41

    .line 275
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbgd;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 p1, 0x0

    return p1

    .line 277
    :cond_41
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    .line 372
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzacf()Z

    move-result v0

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 375
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzup()V

    :cond_f
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .registers 10

    monitor-enter p0

    .line 278
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 279
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1fe

    .line 280
    monitor-exit p0

    return-void

    .line 281
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1f9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenm:Z

    if-nez v0, :cond_1f9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzact()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1f9

    .line 284
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacv()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 285
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_1fe

    .line 286
    monitor-exit p0

    return-void

    .line 287
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacu()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 288
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcro:Lcom/google/android/gms/internal/ads/zzaag;

    .line 289
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 291
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_1fe

    .line 292
    monitor-exit p0

    return-void

    .line 294
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzzj()Lcom/google/android/gms/internal/ads/zzbgh;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 296
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgh;->getAspectRatio()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    cmpl-float v1, v0, v1

    if-nez v1, :cond_63

    .line 298
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_1fe

    .line 299
    monitor-exit p0

    return-void

    .line 300
    :cond_63
    :try_start_63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 301
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_7c

    if-eqz v2, :cond_7c

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_84

    :cond_7c
    if-nez p1, :cond_84

    if-eqz v1, :cond_84

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 310
    :cond_84
    :goto_84
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 311
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->setMeasuredDimension(II)V
    :try_end_8f
    .catchall {:try_start_63 .. :try_end_8f} :catchall_1fe

    .line 313
    monitor-exit p0

    return-void

    .line 314
    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 315
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcrr:Lcom/google/android/gms/internal/ads/zzaag;

    .line 316
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_de

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_de

    :cond_b2
    const-string v0, "/contentHeight"

    .line 321
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbgf;-><init>(Lcom/google/android/gms/internal/ads/zzbgd;)V

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 324
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfs(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 326
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 327
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeny:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d5

    .line 330
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeny:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_d9

    .line 328
    :cond_d5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 331
    :goto_d9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->setMeasuredDimension(II)V
    :try_end_dc
    .catchall {:try_start_91 .. :try_end_dc} :catchall_1fe

    .line 332
    monitor-exit p0

    return-void

    .line 318
    :cond_de
    :goto_de
    :try_start_de
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_1fe

    .line 319
    monitor-exit p0

    return-void

    .line 333
    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 334
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzxc:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->setMeasuredDimension(II)V
    :try_end_f6
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_1fe

    .line 335
    monitor-exit p0

    return-void

    .line 336
    :cond_f8
    :try_start_f8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 339
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_118

    if-ne v0, v3, :cond_114

    goto :goto_118

    :cond_114
    const v0, 0x7fffffff

    goto :goto_119

    :cond_118
    :goto_118
    move v0, p1

    :goto_119
    if-eq v2, v4, :cond_11d

    if-ne v2, v3, :cond_11e

    :cond_11d
    move v5, p2

    .line 347
    :cond_11e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_12e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    if-le v2, v5, :cond_12c

    goto :goto_12e

    :cond_12c
    const/4 v2, 0x0

    goto :goto_12f

    :cond_12e
    :goto_12e
    const/4 v2, 0x1

    .line 348
    :goto_12f
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaav;->zzctz:Lcom/google/android/gms/internal/ads/zzaag;

    .line 349
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v4

    .line 350
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 351
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_163

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_163

    const/4 v0, 0x1

    goto :goto_164

    :cond_163
    const/4 v0, 0x0

    :goto_164
    if-eqz v2, :cond_167

    move v2, v0

    :cond_167
    const/16 v0, 0x8

    if-eqz v2, :cond_1d6

    .line 358
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenc:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1c4

    const/4 p1, 0x4

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->setVisibility(I)V

    .line 361
    :cond_1c4
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->setMeasuredDimension(II)V

    .line 362
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenf:Z

    if-nez p1, :cond_1f7

    .line 363
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzbxj:Lcom/google/android/gms/internal/ads/zzto$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V

    .line 364
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenf:Z
    :try_end_1d4
    .catchall {:try_start_f8 .. :try_end_1d4} :catchall_1fe

    monitor-exit p0

    return-void

    .line 365
    :cond_1d6
    :try_start_1d6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1df

    .line 366
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->setVisibility(I)V

    .line 367
    :cond_1df
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeng:Z

    if-nez p1, :cond_1ec

    .line 368
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzbxk:Lcom/google/android/gms/internal/ads/zzto$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V

    .line 369
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeng:Z

    .line 370
    :cond_1ec
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->setMeasuredDimension(II)V
    :try_end_1f7
    .catchall {:try_start_1d6 .. :try_end_1f7} :catchall_1fe

    .line 371
    :cond_1f7
    monitor-exit p0

    return-void

    .line 282
    :cond_1f9
    :goto_1f9
    :try_start_1f9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_1fe

    .line 283
    monitor-exit p0

    return-void

    :catchall_1fe
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 524
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 527
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 531
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 534
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 256
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabt()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 258
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabu()Z

    move-result v0

    if-nez v0, :cond_23

    .line 259
    monitor-enter p0

    .line 260
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;

    if-eqz v0, :cond_1e

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadh;->zzc(Landroid/view/MotionEvent;)V

    .line 262
    :cond_1e
    monitor-exit p0

    goto :goto_2a

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw p1

    .line 263
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemz:Lcom/google/android/gms/internal/ads/zzeg;

    if-eqz v0, :cond_2a

    .line 264
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/view/MotionEvent;)V

    .line 265
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p1, 0x0

    return p1

    .line 267
    :cond_32
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeoc:Ljava/lang/ref/WeakReference;

    .line 584
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .registers 3

    monitor-enter p0

    .line 445
    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeno:I

    .line 446
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_c

    .line 447
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 448
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 61
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_b

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    :cond_b
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    .line 540
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 542
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 545
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 649
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzabq()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    .line 650
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    return-void

    .line 652
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 653
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    const-string v0, "Initializing ArWebView object."

    .line 654
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzso;->zza(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 656
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzso;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    .line 658
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzso;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_38
    const-string p1, "The FrameLayout object cannot be null."

    .line 659
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    monitor-enter p0

    .line 377
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 378
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfq;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadc;)V
    .registers 2

    monitor-enter p0

    .line 576
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenv:Lcom/google/android/gms/internal/ads/zzadc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 577
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadh;)V
    .registers 2

    monitor-enter p0

    .line 586
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 587
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbgh;)V
    .registers 3

    monitor-enter p0

    .line 590
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenr:Lcom/google/android/gms/internal/ads/zzbgh;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 591
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 592
    monitor-exit p0

    return-void

    .line 593
    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenr:Lcom/google/android/gms/internal/ads/zzbgh;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    .line 594
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .registers 2

    monitor-enter p0

    .line 383
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 385
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqt;)V
    .registers 3

    .line 626
    monitor-enter p0

    .line 627
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzbrd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzens:Z

    .line 628
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    .line 629
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzbrd:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzbd(Z)V

    return-void

    :catchall_c
    move-exception p1

    .line 628
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsa;)V
    .registers 2

    monitor-enter p0

    .line 578
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenw:Lcom/google/android/gms/internal/ads/zzsa;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 579
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzahc<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbfn;",
            ">;>;)V"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_7

    .line 642
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfq;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_7
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahc<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbfn;",
            ">;)V"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_7

    .line 636
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbes;)V
    .registers 4

    monitor-enter p0

    .line 564
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;

    .line 566
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 567
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_c

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_c
    const-string p1, "Could not convert parameters to JSON."

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    .line 173
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfs(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 5

    .line 622
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbfq;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 624
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbfq;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .registers 6

    .line 232
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_b

    const-string p1, "1"

    goto :goto_d

    :cond_b
    const-string p1, "0"

    :goto_d
    const-string v1, "success"

    .line 233
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaas()V
    .registers 4

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzach()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 195
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaat()V
    .registers 4

    .line 224
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 225
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzqd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzqc()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzbi(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 229
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 230
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaau()Landroid/content/Context;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzaau()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .registers 2

    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaaw()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .registers 2

    monitor-enter p0

    .line 239
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeod:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaax()Lcom/google/android/gms/internal/ads/zzbhg;
    .registers 2

    monitor-enter p0

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaay()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzacv:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzaaz()Lcom/google/android/gms/internal/ads/zzbgz;
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    return-object v0
.end method

.method public final zzaba()Landroid/webkit/WebViewClient;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    return-object v0
.end method

.method public final declared-synchronized zzabb()Z
    .registers 2

    monitor-enter p0

    .line 243
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdog:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabc()Lcom/google/android/gms/internal/ads/zzeg;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemz:Lcom/google/android/gms/internal/ads/zzeg;

    return-object v0
.end method

.method public final declared-synchronized zzabd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenj:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabe()Z
    .registers 2

    monitor-enter p0

    .line 246
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenm:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabf()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    .line 498
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzwc()V

    .line 500
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaye;->zzdzw:Lcom/google/android/gms/internal/ads/zzdrr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>(Lcom/google/android/gms/internal/ads/zzbgd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrr;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 501
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabg()Z
    .registers 2

    monitor-enter p0

    .line 549
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabh()Z
    .registers 2

    monitor-enter p0

    .line 595
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenx:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public final zzabi()V
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->zzyd()V

    return-void
.end method

.method public final zzabj()V
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

    if-nez v0, :cond_17

    .line 519
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabd;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

    .line 520
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    :cond_17
    return-void
.end method

.method public final declared-synchronized zzabk()Lcom/google/android/gms/internal/ads/zzadh;
    .registers 2

    monitor-enter p0

    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabl()V
    .registers 2

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzabm()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 536
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzabn()Lcom/google/android/gms/internal/ads/zzsa;
    .registers 2

    monitor-enter p0

    .line 580
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenw:Lcom/google/android/gms/internal/ads/zzsa;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzabp()Lcom/google/android/gms/internal/ads/zzso;
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    return-object v0
.end method

.method public final zzabq()Z
    .registers 3

    .line 662
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcvu:Lcom/google/android/gms/internal/ads/zzaag;

    .line 663
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 664
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzene:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzal(Z)V
    .registers 4

    monitor-enter p0

    .line 441
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_12

    .line 442
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfq;->zzabs()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    monitor-exit p0

    return-void

    .line 443
    :cond_12
    :try_start_12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzdog:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    .line 444
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    monitor-enter p0

    .line 379
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenj:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 380
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzav(Z)V
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    .line 610
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfq;->zzav(Z)V

    return-void
.end method

.method public final declared-synchronized zzax(Z)V
    .registers 4

    monitor-enter p0

    .line 386
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenm:Z

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 387
    :goto_8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenm:Z

    .line 388
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzaci()V

    if-eqz v0, :cond_38

    .line 389
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcmp:Lcom/google/android/gms/internal/ads/zzaag;

    .line 390
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-nez v0, :cond_38

    .line 392
    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;)V

    if-eqz p1, :cond_33

    const-string p1, "expanded"

    goto :goto_35

    :cond_33
    const-string p1, "default"

    :goto_35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzdy(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 393
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzay(Z)V
    .registers 2

    monitor-enter p0

    .line 547
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 548
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaz(Z)V
    .registers 3

    monitor-enter p0

    .line 596
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenx:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenx:I

    if-gtz v0, :cond_16

    .line 597
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_16

    .line 598
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzus()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 599
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    monitor-enter p0

    .line 381
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeod:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 382
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahc<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbfn;",
            ">;)V"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_7

    .line 639
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgw;->zzaco()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbgw;->zzf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    .line 140
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 142
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    .line 180
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_3f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfs(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(ZI)Z
    .registers 5

    .line 644
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->destroy()V

    .line 645
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgg;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgg;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zztp;)V

    .line 646
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzbxl:Lcom/google/android/gms/internal/ads/zzto$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzba(Z)V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfq;->zzba(Z)V

    return-void
.end method

.method public final zzbw(Landroid/content/Context;)V
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhd;->setBaseContext(Landroid/content/Context;)V

    .line 439
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenh:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfq;->zzc(ZI)V

    return-void
.end method

.method public final zzdb(Ljava/lang/String;)V
    .registers 2

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgd;->zzfs(Ljava/lang/String;)V

    return-void
.end method

.method public final zzds(I)V
    .registers 7

    if-nez p1, :cond_15

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    .line 201
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabd;->zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z

    .line 202
    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzach()V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabi;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2f
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzfi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbes;
    .registers 3

    monitor-enter p0

    .line 568
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 p1, 0x0

    .line 569
    monitor-exit p0

    return-object p1

    .line 570
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeog:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbes;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzkd()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 550
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenq:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_d

    .line 552
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzkd()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 553
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzke()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 554
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenq:Z

    .line 555
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_d

    .line 556
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzke()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 557
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzuq()V
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenz:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    .line 217
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzabd;->zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabd;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenz:Lcom/google/android/gms/internal/ads/zzabg;

    .line 219
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    const-string v3, "native:view_show"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    .line 220
    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 222
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzur()V
    .registers 2

    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 614
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzur()V

    :cond_9
    return-void
.end method

.method public final zzzi()Lcom/google/android/gms/internal/ads/zzbcu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzzj()Lcom/google/android/gms/internal/ads/zzbgh;
    .registers 2

    monitor-enter p0

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenr:Lcom/google/android/gms/internal/ads/zzbgh;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzk()Lcom/google/android/gms/internal/ads/zzabg;
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    return-object v0
.end method

.method public final zzzl()Landroid/app/Activity;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzzm()Lcom/google/android/gms/ads/internal/zza;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenb:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final zzzn()Lcom/google/android/gms/internal/ads/zzabj;
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    return-object v0
.end method

.method public final zzzo()Lcom/google/android/gms/internal/ads/zzbbd;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    return-object v0
.end method

.method public final zzzp()I
    .registers 2

    .line 616
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzzq()I
    .registers 2

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzzr()V
    .registers 2

    monitor-enter p0

    .line 573
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenv:Lcom/google/android/gms/internal/ads/zzadc;

    if-eqz v0, :cond_a

    .line 574
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->zzenv:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzrx()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 575
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
