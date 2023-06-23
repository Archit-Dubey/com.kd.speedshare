.class final Lcom/google/android/gms/internal/ads/zzbho;
.super Lcom/google/android/gms/internal/ads/zzbhu;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzajp;
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

.field private zzehs:Lcom/google/android/gms/internal/ads/zzabg;

.field private final zzelk:Lcom/google/android/gms/internal/ads/zztm;

.field private final zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

.field private final zzemz:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzena:Lcom/google/android/gms/ads/internal/zzi;

.field private final zzenb:Lcom/google/android/gms/ads/internal/zza;

.field private final zzend:Lcom/google/android/gms/internal/ads/zzso;

.field private final zzene:Z

.field private zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

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

.field private final zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

.field private final zzepe:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxc:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbhd;Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzbhg;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzso;Z)V
    .registers 16

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhs;)V

    const/4 p6, 0x1

    .line 2
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenp:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenq:Z

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdpt:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepe:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmu:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmt:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->maxWidth:I

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->maxHeight:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzacv:Ljava/lang/String;

    .line 14
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenm:Z

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeno:I

    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemz:Lcom/google/android/gms/internal/ads/zzeg;

    .line 17
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    .line 18
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    .line 19
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenb:Lcom/google/android/gms/ads/internal/zza;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzbqy:Landroid/view/WindowManager;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzbqy:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    .line 22
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    .line 23
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    .line 24
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzene:Z

    .line 25
    new-instance p2, Lcom/google/android/gms/internal/ads/zzban;

    .line 26
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    .line 27
    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/zzban;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object p2

    iget-object p3, p8, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p5

    invoke-virtual {p2, p1, p3, p5}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbho;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzaci()V

    .line 31
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result p2

    if-eqz p2, :cond_80

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzc(Lcom/google/android/gms/internal/ads/zzbfn;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhp;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :cond_80
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzacm()V

    .line 35
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabj;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzabi;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzacv:Ljava/lang/String;

    const-string p7, "make_wv"

    invoke-direct {p3, p6, p7, p5}, Lcom/google/android/gms/internal/ads/zzabi;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p2

    invoke-virtual {p2, p9}, Lcom/google/android/gms/internal/ads/zzabi;->zzc(Lcom/google/android/gms/internal/ads/zzabi;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzabd;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    .line 38
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    const-string p5, "native:view_create"

    invoke-virtual {p3, p5, p2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    .line 39
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

    .line 40
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenz:Lcom/google/android/gms/internal/ads/zzabg;

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzayj;->zzbg(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbho;)I
    .registers 1

    .line 532
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeny:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbho;I)I
    .registers 2

    .line 533
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeny:I

    return p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzty$zzi$zza;)V
    .registers 5

    .line 525
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzty$zzae;->zzpe()Lcom/google/android/gms/internal/ads/zzty$zzae$zza;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzty$zzae$zza;->zzpd()Z

    move-result v1

    if-eq v1, p0, :cond_d

    .line 527
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzty$zzae$zza;->zzw(Z)Lcom/google/android/gms/internal/ads/zzty$zzae$zza;

    .line 529
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzty$zzae$zza;->zzcw(I)Lcom/google/android/gms/internal/ads/zzty$zzae$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzegb$zzb;->zzbfq()Lcom/google/android/gms/internal/ads/zzehl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzty$zzae;

    .line 530
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzty$zzi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzty$zzae;)Lcom/google/android/gms/internal/ads/zzty$zzi$zza;

    return-void
.end method

.method private final zzacf()Z
    .registers 11

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 48
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabt()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 52
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    .line 57
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_3c

    goto :goto_5c

    .line 60
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(Landroid/app/Activity;)[I

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzbaq;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzps()Lcom/google/android/gms/internal/ads/zzbaq;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

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

    .line 63
    :goto_5e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmt:I

    if-ne v0, v4, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmu:I

    if-ne v0, v5, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->maxWidth:I

    if-ne v0, v6, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->maxHeight:I

    if-ne v0, v7, :cond_6f

    return v1

    .line 65
    :cond_6f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmt:I

    if-ne v0, v4, :cond_77

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmu:I

    if-eq v0, v5, :cond_78

    :cond_77
    const/4 v1, 0x1

    .line 66
    :cond_78
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmt:I

    .line 67
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdmu:I

    .line 68
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbho;->maxWidth:I

    .line 69
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbho;->maxHeight:I

    .line 70
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzbqy:Landroid/view/WindowManager;

    .line 71
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 72
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(IIIIFI)V

    return v1
.end method

.method private final zzach()V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    .line 104
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabd;->zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzaci()V
    .registers 3

    monitor-enter p0

    .line 338
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenm:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 341
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 342
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzacj()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 344
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzack()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    .line 346
    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 339
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzack()V
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

    .line 347
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 348
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 350
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenn:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 351
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

    .line 352
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 353
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzky()Lcom/google/android/gms/internal/ads/zzayj;

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 355
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenn:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 356
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

    .line 414
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;

    if-eqz v0, :cond_1f

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;

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

    .line 416
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbes;->release()V

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 419
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

    .line 456
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    if-nez v0, :cond_5

    return-void

    .line 458
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 459
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvy()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 460
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zzvy()Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaay;->zza(Lcom/google/android/gms/internal/ads/zzabi;)Z

    :cond_20
    return-void
.end method

.method private final zzbd(Z)V
    .registers 4

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "isVisible"

    .line 488
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 490
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdpt:Ljava/lang/String;
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

.method protected final declared-synchronized onAttachedToWindow()V
    .registers 4

    monitor-enter p0

    .line 282
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->onAttachedToWindow()V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->onAttachedToWindow()V

    .line 285
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzens:Z

    .line 287
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 288
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbhf;

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 289
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 290
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabt()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 292
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzent:Z

    if-nez v0, :cond_36

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 295
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 298
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 299
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzent:Z

    .line 300
    :cond_36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzacf()Z

    const/4 v0, 0x1

    .line 301
    :cond_3a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbho;->zzbd(Z)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 302
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 3

    .line 303
    monitor-enter p0

    .line 304
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->onDetachedFromWindow()V

    .line 306
    :cond_c
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->onDetachedFromWindow()V

    .line 307
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 309
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    if-eqz v0, :cond_44

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 311
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabt()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 316
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 319
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 320
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzent:Z

    .line 321
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_49

    .line 322
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbho;->zzbd(Z)V

    return-void

    :catchall_49
    move-exception v0

    .line 321
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 142
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    .line 147
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

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_13

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 371
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 373
    :cond_13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->onDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 376
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhf;

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v0, 0x9

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    .line 165
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbho;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_20
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2b

    .line 166
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbho;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    cmpl-float v0, v1, v3

    if-lez v0, :cond_35

    .line 167
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbho;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_35
    cmpg-float v0, v1, v3

    if-gez v0, :cond_41

    .line 168
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbho;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 p1, 0x0

    return p1

    .line 170
    :cond_41
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    .line 258
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzacf()Z

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzup()V

    :cond_f
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .registers 10

    monitor-enter p0

    .line 171
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 172
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbho;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f3

    .line 173
    monitor-exit p0

    return-void

    .line 174
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1ee

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenm:Z

    if-nez v0, :cond_1ee

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzact()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1ee

    .line 177
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacv()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 178
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhu;->onMeasure(II)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_1f3

    .line 179
    monitor-exit p0

    return-void

    .line 180
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacu()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 181
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcro:Lcom/google/android/gms/internal/ads/zzaag;

    .line 182
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 184
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhu;->onMeasure(II)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_1f3

    .line 185
    monitor-exit p0

    return-void

    .line 187
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzzj()Lcom/google/android/gms/internal/ads/zzbgh;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgh;->getAspectRatio()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    cmpl-float v1, v0, v1

    if-nez v1, :cond_63

    .line 191
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhu;->onMeasure(II)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_1f3

    .line 192
    monitor-exit p0

    return-void

    .line 193
    :cond_63
    :try_start_63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 194
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

    .line 203
    :cond_84
    :goto_84
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 204
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbho;->setMeasuredDimension(II)V
    :try_end_8f
    .catchall {:try_start_63 .. :try_end_8f} :catchall_1f3

    .line 206
    monitor-exit p0

    return-void

    .line 207
    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 208
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcrr:Lcom/google/android/gms/internal/ads/zzaag;

    .line 209
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 210
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

    .line 214
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhq;-><init>(Lcom/google/android/gms/internal/ads/zzbho;)V

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbho;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->zzdb(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 219
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeny:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d5

    .line 222
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeny:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_d9

    .line 220
    :cond_d5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 223
    :goto_d9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbho;->setMeasuredDimension(II)V
    :try_end_dc
    .catchall {:try_start_91 .. :try_end_dc} :catchall_1f3

    .line 224
    monitor-exit p0

    return-void

    .line 211
    :cond_de
    :goto_de
    :try_start_de
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhu;->onMeasure(II)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_1f3

    .line 212
    monitor-exit p0

    return-void

    .line 225
    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 226
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbho;->setMeasuredDimension(II)V
    :try_end_f6
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_1f3

    .line 227
    monitor-exit p0

    return-void

    .line 228
    :cond_f8
    :try_start_f8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 230
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 231
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

    .line 239
    :cond_11e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_12e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    if-le v2, v5, :cond_12c

    goto :goto_12e

    :cond_12c
    const/4 v2, 0x0

    goto :goto_12f

    :cond_12e
    :goto_12e
    const/4 v2, 0x1

    .line 240
    :goto_12f
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaav;->zzctz:Lcom/google/android/gms/internal/ads/zzaag;

    .line 241
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v4

    .line 242
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 243
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_16a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_16a

    goto :goto_16b

    :cond_16a
    const/4 v3, 0x0

    :goto_16b
    if-eqz v2, :cond_16e

    move v2, v3

    :cond_16e
    const/16 v0, 0x8

    if-eqz v2, :cond_1d8

    .line 250
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float p1, p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    int-to-float p2, p2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzxc:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    const/16 v4, 0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not enough space to show ad. Needs "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1d3

    const/4 p1, 0x4

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbho;->setVisibility(I)V

    .line 253
    :cond_1d3
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbho;->setMeasuredDimension(II)V
    :try_end_1d6
    .catchall {:try_start_f8 .. :try_end_1d6} :catchall_1f3

    monitor-exit p0

    return-void

    .line 254
    :cond_1d8
    :try_start_1d8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1e1

    .line 255
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbho;->setVisibility(I)V

    .line 256
    :cond_1e1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbhg;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbhg;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbho;->setMeasuredDimension(II)V
    :try_end_1ec
    .catchall {:try_start_1d8 .. :try_end_1ec} :catchall_1f3

    .line 257
    monitor-exit p0

    return-void

    .line 175
    :cond_1ee
    :goto_1ee
    :try_start_1ee
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhu;->onMeasure(II)V
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_1f3

    .line 176
    monitor-exit p0

    return-void

    :catchall_1f3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    .line 382
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->onPause()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 385
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 387
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->onResume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 390
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabt()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 153
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabu()Z

    move-result v0

    if-nez v0, :cond_23

    .line 154
    monitor-enter p0

    .line 155
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;

    if-eqz v0, :cond_1e

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadh;->zzc(Landroid/view/MotionEvent;)V

    .line 157
    :cond_1e
    monitor-exit p0

    goto :goto_2a

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw p1

    .line 158
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemz:Lcom/google/android/gms/internal/ads/zzeg;

    if-eqz v0, :cond_2a

    .line 159
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/view/MotionEvent;)V

    .line 160
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeoc:Ljava/lang/ref/WeakReference;

    .line 432
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .registers 3

    monitor-enter p0

    .line 332
    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeno:I

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_c

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 335
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopLoading()V
    .registers 3

    .line 398
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 401
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 506
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzabq()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    .line 507
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    return-void

    .line 509
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    const-string v0, "Initializing ArWebView object."

    .line 511
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzso;->zza(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 513
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzso;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    .line 515
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzso;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_38
    const-string p1, "The FrameLayout object cannot be null."

    .line 516
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    monitor-enter p0

    .line 263
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 264
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadc;)V
    .registers 2

    monitor-enter p0

    .line 440
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenv:Lcom/google/android/gms/internal/ads/zzadc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 441
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

    .line 434
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 435
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

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenr:Lcom/google/android/gms/internal/ads/zzbgh;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 447
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfb(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 448
    monitor-exit p0

    return-void

    .line 449
    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenr:Lcom/google/android/gms/internal/ads/zzbgh;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    .line 450
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

    .line 269
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 271
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqt;)V
    .registers 3

    .line 482
    monitor-enter p0

    .line 483
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzbrd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzens:Z

    .line 484
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    .line 485
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzbrd:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbho;->zzbd(Z)V

    return-void

    :catchall_c
    move-exception p1

    .line 484
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsa;)V
    .registers 2

    monitor-enter p0

    .line 442
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenw:Lcom/google/android/gms/internal/ads/zzsa;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 443
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

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    if-eqz v0, :cond_7

    .line 499
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

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

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    if-eqz v0, :cond_7

    .line 493
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbes;)V
    .registers 4

    monitor-enter p0

    .line 420
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;

    .line 422
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 423
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 480
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .registers 6

    .line 126
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

    .line 127
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 130
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaas()V
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzach()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 86
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaat()V
    .registers 4

    .line 117
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzqd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlb()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzqc()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzbi(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaau()Landroid/content/Context;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzaau()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .registers 2

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;
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

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeod:Lcom/google/android/gms/ads/internal/overlay/zzc;
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

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;
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

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzacv:Ljava/lang/String;
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

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    return-object v0
.end method

.method public final zzaba()Landroid/webkit/WebViewClient;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    return-object v0
.end method

.method public final declared-synchronized zzabb()Z
    .registers 2

    monitor-enter p0

    .line 138
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdog:Z
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

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemz:Lcom/google/android/gms/internal/ads/zzeg;

    return-object v0
.end method

.method public final zzabd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepe:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method public final declared-synchronized zzabe()Z
    .registers 2

    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenm:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabf()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized zzabg()Z
    .registers 2

    monitor-enter p0

    .line 405
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenp:Z
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

    .line 451
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenx:I
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

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzban;->zzyd()V

    return-void
.end method

.method public final zzabj()V
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

    if-nez v0, :cond_17

    .line 379
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabd;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeoa:Lcom/google/android/gms/internal/ads/zzabg;

    .line 380
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    :cond_17
    return-void
.end method

.method public final declared-synchronized zzabk()Lcom/google/android/gms/internal/ads/zzadh;
    .registers 2

    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenu:Lcom/google/android/gms/internal/ads/zzadh;
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

    .line 462
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbho;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzabm()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 392
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzabn()Lcom/google/android/gms/internal/ads/zzsa;
    .registers 2

    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenw:Lcom/google/android/gms/internal/ads/zzsa;
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

    .line 518
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    return-object v0
.end method

.method public final zzabq()Z
    .registers 3

    .line 519
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcvu:Lcom/google/android/gms/internal/ads/zzaag;

    .line 520
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 521
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzend:Lcom/google/android/gms/internal/ads/zzso;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzene:Z

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

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_12

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabs()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    monitor-exit p0

    return-void

    .line 329
    :cond_12
    :try_start_12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzdog:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    .line 330
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepe:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzav(Z)V
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 466
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zzav(Z)V

    return-void
.end method

.method public final declared-synchronized zzax(Z)V
    .registers 4

    monitor-enter p0

    .line 272
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenm:Z

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 273
    :goto_8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenm:Z

    .line 274
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzaci()V

    if-eqz v0, :cond_38

    .line 275
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcmp:Lcom/google/android/gms/internal/ads/zzaag;

    .line 276
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenk:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-nez v0, :cond_38

    .line 278
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

    .line 279
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

    .line 403
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 404
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

    .line 452
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenx:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenx:I

    if-gtz v0, :cond_16

    .line 453
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_16

    .line 454
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzus()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 455
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

    .line 267
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeod:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 268
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

    .line 495
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    if-eqz v0, :cond_7

    .line 496
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhf;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 75
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

    .line 76
    invoke-super/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbhu;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 77
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajo;->zzb(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(ZI)Z
    .registers 5

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->destroy()V

    .line 502
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhn;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zztp;)V

    .line 503
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzelk:Lcom/google/android/gms/internal/ads/zztm;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzto$zza$zza;->zzbxl:Lcom/google/android/gms/internal/ads/zzto$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztm;->zza(Lcom/google/android/gms/internal/ads/zzto$zza$zza;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzba(Z)V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    .line 396
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zzba(Z)V

    return-void
.end method

.method protected final declared-synchronized zzbe(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    .line 358
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzacm()V

    .line 359
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzban;->zzye()V

    .line 360
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1c

    .line 361
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    .line 362
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onDestroy()V

    .line 363
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeni:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 364
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepe:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhf;->destroy()V

    .line 366
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzls()Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbep;->zzc(Lcom/google/android/gms/internal/ads/zzbdb;)Z

    .line 367
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzacl()V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_31

    .line 368
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbw(Landroid/content/Context;)V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhd;->setBaseContext(Landroid/content/Context;)V

    .line 325
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeof:Lcom/google/android/gms/internal/ads/zzban;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)V
    .registers 4

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzepd:Lcom/google/android/gms/internal/ads/zzbhf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhf;->zzc(ZI)V

    return-void
.end method

.method public final declared-synchronized zzdb(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhu;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhu;->zzdb(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "The webview is destroyed. Ignoring action."

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 81
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzds(I)V
    .registers 7

    if-nez p1, :cond_15

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    .line 92
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabd;->zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z

    .line 93
    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzach()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabi;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2f
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 100
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzfi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbes;
    .registers 3

    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 p1, 0x0

    .line 425
    monitor-exit p0

    return-object p1

    .line 426
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeog:Ljava/util/Map;

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

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzkd()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 406
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenq:Z

    .line 407
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_d

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzkd()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 409
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

    .line 410
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenq:Z

    .line 411
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_d

    .line 412
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzena:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzke()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 413
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

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenz:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    .line 109
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzabd;->zza(Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zzabg;[Ljava/lang/String;)Z

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzrp()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabd;->zzb(Lcom/google/android/gms/internal/ads/zzabi;)Lcom/google/android/gms/internal/ads/zzabg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenz:Lcom/google/android/gms/internal/ads/zzabg;

    .line 111
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    const-string v3, "native:view_show"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabg;)V

    .line 112
    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 115
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzajp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzur()V
    .registers 2

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->zzaav()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 470
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

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenr:Lcom/google/android/gms/internal/ads/zzbgh;
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

    .line 429
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzehs:Lcom/google/android/gms/internal/ads/zzabg;

    return-object v0
.end method

.method public final zzzl()Landroid/app/Activity;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzemy:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzzl()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzzm()Lcom/google/android/gms/ads/internal/zza;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenb:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final zzzn()Lcom/google/android/gms/internal/ads/zzabj;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzeob:Lcom/google/android/gms/internal/ads/zzabj;

    return-object v0
.end method

.method public final zzzo()Lcom/google/android/gms/internal/ads/zzbbd;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzboy:Lcom/google/android/gms/internal/ads/zzbbd;

    return-object v0
.end method

.method public final zzzp()I
    .registers 2

    .line 472
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzzq()I
    .registers 2

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbho;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzzr()V
    .registers 2

    monitor-enter p0

    .line 437
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenv:Lcom/google/android/gms/internal/ads/zzadc;

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbho;->zzenv:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzrx()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 439
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
