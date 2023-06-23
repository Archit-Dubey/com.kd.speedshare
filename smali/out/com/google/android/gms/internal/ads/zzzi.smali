.class public final Lcom/google/android/gms/internal/ads/zzzi;
.super Lcom/google/android/gms/internal/ads/zzwv;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# instance fields
.field private zzbpd:Lcom/google/android/gms/internal/ads/zzwj;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwv;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzi;)Lcom/google/android/gms/internal/ads/zzwj;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzbpd:Lcom/google/android/gms/internal/ads/zzwj;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 1

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyi;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 1

    return-void
.end method

.method public final resume()V
    .registers 1

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final showInterstitial()V
    .registers 1

    return-void
.end method

.method public final stopLoading()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzabo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqs;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqy;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatq;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvh;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwi;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwj;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzbpd:Lcom/google/android/gms/internal/ads/zzwj;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxe;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxk;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyc;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzve;)Z
    .registers 3

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbba;->zzfb(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbaq;->zzaag:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzzi;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbo(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzkf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkg()V
    .registers 1

    return-void
.end method

.method public final zzkh()Lcom/google/android/gms/internal/ads/zzvh;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzki()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzyd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzxe;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkl()Lcom/google/android/gms/internal/ads/zzwj;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
