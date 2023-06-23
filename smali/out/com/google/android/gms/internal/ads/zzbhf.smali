.class public final Lcom/google/android/gms/internal/ads/zzbhf;
.super Lcom/google/android/gms/internal/ads/zzbhs;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgz;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile zzbpo:Z

.field private zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

.field private zzddi:Lcom/google/android/gms/internal/ads/zzagi;

.field private zzddj:Lcom/google/android/gms/internal/ads/zzagk;

.field private zzdee:Lcom/google/android/gms/ads/internal/zzc;

.field private zzdef:Lcom/google/android/gms/internal/ads/zzapt;

.field private zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

.field private zzdsh:Z

.field protected zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

.field private zzelm:Lcom/google/android/gms/internal/ads/zzbhc;

.field private zzeln:Lcom/google/android/gms/internal/ads/zzbhb;

.field private zzelo:Lcom/google/android/gms/internal/ads/zzbhe;

.field private zzelp:Z

.field private zzelq:Z

.field private zzelr:Z

.field private zzels:Z

.field private zzelt:Lcom/google/android/gms/internal/ads/zzaqa;

.field private zzelu:Lcom/google/android/gms/internal/ads/zzavr;

.field private zzelv:Z

.field private zzelw:Z

.field private zzelx:I

.field private zzely:Landroid/view/View$OnAttachStateChangeListener;

.field private final zzepa:Lcom/google/android/gms/internal/ads/zzajt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzajt<",
            "Lcom/google/android/gms/internal/ads/zzbfn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelp:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavr;I)V
    .registers 6

    .line 96
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzavr;->zzvj()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p3, :cond_1d

    .line 97
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzavr;->zzl(Landroid/view/View;)V

    .line 98
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzavr;->zzvj()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaye;->zzdzw:Lcom/google/android/gms/internal/ads/zzdrr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhh;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhh;-><init>(Lcom/google/android/gms/internal/ads/zzbhf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavr;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdrr;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapt;->zzuf()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 167
    :goto_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkv()Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v0, :cond_2d

    .line 169
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 170
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdod:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v1, :cond_28

    .line 171
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdod:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    .line 172
    :cond_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzavr;->zzdz(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbhf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavr;I)V
    .registers 4

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavr;I)V

    return-void
.end method

.method private final zzabx()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzely:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_5

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzely:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzacc()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelm:Lcom/google/android/gms/internal/ads/zzbhc;

    if-eqz v0, :cond_1c

    .line 128
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelv:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelx:I

    if-lez v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelw:Z

    if-eqz v0, :cond_1c

    .line 129
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelm:Lcom/google/android/gms/internal/ads/zzbhc;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzak(Z)V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelm:Lcom/google/android/gms/internal/ads/zzbhc;

    .line 131
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabj()V

    return-void
.end method

.method private static zzacd()Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 272
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcnp:Lcom/google/android/gms/internal/ads/zzaag;

    .line 273
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 275
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzbhr;)Landroid/webkit/WebResourceResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_101

    .line 280
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x2710

    .line 281
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 282
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 283
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzbhr;->zzam:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 286
    :cond_41
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_f9

    .line 288
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 289
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 290
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    .line 291
    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 292
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbau;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbau;-><init>()V

    const/4 v5, 0x0

    .line 293
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 294
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 295
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v4, 0x12c

    if-lt v6, v4, :cond_f1

    const/16 v4, 0x190

    if-ge v6, v4, :cond_f1

    const-string v4, "Location"

    .line 297
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e9

    const-string v6, "tel:"

    .line 300
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    return-object v5

    .line 302
    :cond_85
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9a

    const-string p1, "Protocol is null"

    .line 305
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacd()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_9a
    const-string v6, "http"

    .line 307
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c9

    const-string v6, "https"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c9

    const-string p1, "Unsupported scheme: "

    .line 308
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bb

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :cond_bb
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_c1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacd()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_c9
    const-string v0, "Redirecting to "

    .line 310
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_da

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e0

    :cond_da
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_e0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v5

    goto/16 :goto_9

    .line 299
    :cond_e9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Location header in redirect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_f1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 287
    :cond_f9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid protocol."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_101
    new-instance p1, Ljava/io/IOException;

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Too many redirects (20)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_118

    :goto_117
    throw p1

    :goto_118
    goto :goto_117
.end method


# virtual methods
.method public final destroy()V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 175
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzavr;->zzvl()V

    .line 176
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    .line 177
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabx()V

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajt;->reset()V

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_1a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    .line 182
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 183
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelm:Lcom/google/android/gms/internal/ads/zzbhc;

    .line 184
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzeln:Lcom/google/android/gms/internal/ads/zzbhb;

    .line 185
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    .line 186
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddj:Lcom/google/android/gms/internal/ads/zzagk;

    .line 187
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 188
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelo:Lcom/google/android/gms/internal/ads/zzbhe;

    .line 189
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    if-eqz v2, :cond_36

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapt;->zzac(Z)V

    .line 191
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    .line 192
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabp()Lcom/google/android/gms/internal/ads/zzso;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 85
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzso;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_11

    .line 86
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzso;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbhs;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 336
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzb(ZI)Z

    move-result p1

    return p1
.end method

.method public final zza(IIZ)V
    .registers 5

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelt:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzj(II)V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    if-eqz p3, :cond_d

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzapt;->zza(IIZ)V

    :cond_d
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 10

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result v0

    .line 134
    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 135
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v2

    if-nez v2, :cond_19

    move-object v3, v1

    goto :goto_1c

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    move-object v3, v2

    :goto_1c
    if-eqz v0, :cond_20

    move-object v4, v1

    goto :goto_23

    .line 136
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    move-object v4, v0

    :goto_23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 137
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzbbd;)V

    .line 138
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbfn;Z)V
    .registers 7

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqa;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaau()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaac;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaac;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzbpo:Z

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelt:Lcom/google/android/gms/internal/ads/zzaqa;

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhb;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzeln:Lcom/google/android/gms/internal/ads/zzbhb;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhc;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelm:Lcom/google/android/gms/internal/ads/zzbhc;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 2

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelv:Z

    .line 91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzeln:Lcom/google/android/gms/internal/ads/zzbhb;

    if-eqz p1, :cond_d

    .line 92
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhb;->zzta()V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzeln:Lcom/google/android/gms/internal/ads/zzbhb;

    .line 94
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacc()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzagi;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/ads/internal/overlay/zzt;ZLcom/google/android/gms/internal/ads/zzahf;Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/ads/zzaqc;Lcom/google/android/gms/internal/ads/zzavr;)V
    .registers 12

    if-nez p8, :cond_e

    .line 27
    new-instance p8, Lcom/google/android/gms/ads/internal/zzc;

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object p7

    const/4 v0, 0x0

    invoke-direct {p8, p7, p10, v0}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavr;Lcom/google/android/gms/internal/ads/zzarx;)V

    .line 28
    :cond_e
    new-instance p7, Lcom/google/android/gms/internal/ads/zzapt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-direct {p7, v0, p9}, Lcom/google/android/gms/internal/ads/zzapt;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzaqc;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    .line 29
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    .line 30
    sget-object p7, Lcom/google/android/gms/internal/ads/zzaav;->zzcoa:Lcom/google/android/gms/internal/ads/zzaag;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object p10

    invoke-virtual {p10, p7}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p7

    .line 32
    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_35

    .line 33
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagj;

    invoke-direct {p7, p2}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Lcom/google/android/gms/internal/ads/zzagi;)V

    const-string p10, "/adMetadata"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 34
    :cond_35
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagl;

    invoke-direct {p7, p4}, Lcom/google/android/gms/internal/ads/zzagl;-><init>(Lcom/google/android/gms/internal/ads/zzagk;)V

    const-string p10, "/appEvent"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 35
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddu:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/backButton"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 36
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddv:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/refresh"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 37
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddl:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/canOpenApp"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 38
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddk:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/canOpenURLs"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 39
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddm:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/canOpenIntents"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 40
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddn:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/click"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 41
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddo:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/close"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 42
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddp:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/customClose"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 43
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddy:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/instrument"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 44
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzdea:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/delayPageLoaded"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 45
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzdeb:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/delayPageClosed"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 46
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzdec:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/getLocationInfo"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 47
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddq:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/httpTrack"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 48
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddr:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p10, "/log"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 49
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahh;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    invoke-direct {p7, p8, p10, p9}, Lcom/google/android/gms/internal/ads/zzahh;-><init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/ads/zzapt;Lcom/google/android/gms/internal/ads/zzaqc;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 50
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelt:Lcom/google/android/gms/internal/ads/zzaqa;

    const-string p9, "/mraidLoaded"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 51
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahg;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    invoke-direct {p7, p8, p9}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/ads/zzapt;)V

    const-string p9, "/open"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 52
    new-instance p7, Lcom/google/android/gms/internal/ads/zzbex;

    invoke-direct {p7}, Lcom/google/android/gms/internal/ads/zzbex;-><init>()V

    const-string p9, "/precache"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 53
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddt:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p9, "/touch"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 54
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddw:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p9, "/video"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 55
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagm;->zzddx:Lcom/google/android/gms/internal/ads/zzahc;

    const-string p9, "/videoMeta"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlu()Lcom/google/android/gms/internal/ads/zzavy;

    move-result-object p7

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-virtual {p7, p9}, Lcom/google/android/gms/internal/ads/zzavy;->zzac(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_ff

    .line 57
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahe;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 58
    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-direct {p7, p9}, Lcom/google/android/gms/internal/ads/zzahe;-><init>(Landroid/content/Context;)V

    const-string p9, "/logScionEvent"

    .line 59
    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    .line 61
    :cond_ff
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    .line 63
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    .line 64
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddj:Lcom/google/android/gms/internal/ads/zzagk;

    .line 65
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 66
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdee:Lcom/google/android/gms/ads/internal/zzc;

    .line 68
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelp:Z

    return-void
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

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajt;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

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

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 146
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result v1

    .line 147
    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 148
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    .line 151
    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbhj;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddj:Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 152
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagi;Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzbfn;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbd;)V

    .line 153
    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 155
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result v1

    .line 156
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 157
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    .line 160
    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbhj;-><init>(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddi:Lcom/google/android/gms/internal/ads/zzagi;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzddj:Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 161
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzagi;Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzbfn;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbd;)V

    .line 162
    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzabr()Lcom/google/android/gms/ads/internal/zzc;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdee:Lcom/google/android/gms/ads/internal/zzc;

    return-object v0
.end method

.method public final zzabs()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzbpo:Z

    return v0
.end method

.method public final zzabt()Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelq:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabu()Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelr:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_4
    monitor-exit v0

    return-object v1

    :catchall_6
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public final zzabw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 82
    :try_start_4
    monitor-exit v0

    return-object v1

    :catchall_6
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public final zzaby()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v0, :cond_2b

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    .line 109
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavr;I)V

    return-void

    .line 111
    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzabx()V

    .line 112
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbhk;-><init>(Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzavr;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzely:Landroid/view/View$OnAttachStateChangeListener;

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzely:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2b
    return-void
.end method

.method public final zzabz()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 116
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzels:Z

    .line 117
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 118
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelx:I

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacc()V

    return-void

    :catchall_10
    move-exception v1

    .line 117
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final zzaca()V
    .registers 2

    .line 121
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelx:I

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacc()V

    return-void
.end method

.method public final zzacb()V
    .registers 2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelw:Z

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacc()V

    return-void
.end method

.method public final zzace()Lcom/google/android/gms/internal/ads/zzavr;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    return-object v0
.end method

.method public final zzav(Z)V
    .registers 2

    .line 315
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelp:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbhr;)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(Landroid/net/Uri;)Z

    return-void
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

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajt;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahc;)V

    return-void
.end method

.method public final zzba(Z)V
    .registers 2

    .line 323
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdsh:Z

    return-void
.end method

.method public final zzbb(Z)V
    .registers 3

    .line 328
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 329
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelq:Z

    .line 330
    monitor-exit p1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final zzbc(Z)V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelr:Z

    .line 333
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzc(ZI)V
    .registers 13

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result v0

    .line 141
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_18

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    :goto_1a
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoe:Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdoi:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 143
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzbfn;ZILcom/google/android/gms/internal/ads/zzbbd;)V

    .line 144
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbhr;)Z
    .registers 13

    .line 199
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 200
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbhr;->uri:Landroid/net/Uri;

    .line 201
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    return v2

    .line 203
    :cond_27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelp:Z

    if-eqz v1, :cond_5a

    .line 204
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_43

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v1, 0x1

    :goto_44
    if-eqz v1, :cond_5a

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    if-eqz v0, :cond_59

    .line 208
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuu;->onAdClicked()V

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v0, :cond_56

    .line 210
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavr;->zzdz(Ljava/lang/String;)V

    :cond_56
    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzcgl:Lcom/google/android/gms/internal/ads/zzuu;

    :cond_59
    return v4

    .line 213
    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 214
    :try_start_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabc()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 215
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzb(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 216
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 217
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 218
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbfn;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 219
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzl()Landroid/app/Activity;

    move-result-object v5

    .line 220
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8a
    .catch Lcom/google/android/gms/internal/ads/zzef; {:try_start_66 .. :try_end_8a} :catch_8b

    goto :goto_a8

    :catch_8b
    nop

    const-string v1, "Unable to append parameter to URL: "

    .line 223
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a5

    :cond_9f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_a5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    .line 224
    :cond_a8
    :goto_a8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdee:Lcom/google/android/gms/ads/internal/zzc;

    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzc;->zzjy()Z

    move-result v1

    if-eqz v1, :cond_b3

    goto :goto_bb

    .line 228
    :cond_b3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdee:Lcom/google/android/gms/ads/internal/zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzc;->zzbn(Ljava/lang/String;)V

    goto :goto_eb

    .line 225
    :cond_bb
    :goto_bb
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzd;

    .line 226
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    goto :goto_eb

    :cond_d0
    const-string v0, "AdWebView unable to handle URL: "

    .line 229
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e8

    :cond_e3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzfd(Ljava/lang/String;)V

    :goto_eb
    return v2
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbhr;)Landroid/webkit/WebResourceResponse;
    .registers 7

    const-string v0, ""

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelu:Lcom/google/android/gms/internal/ads/zzavr;

    if-eqz v1, :cond_e

    .line 232
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbhr;->zzam:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzavr;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    .line 234
    :cond_e
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid.js"

    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    move-object v1, v2

    goto :goto_76

    .line 237
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhf;->zzum()V

    .line 238
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzaax()Lcom/google/android/gms/internal/ads/zzbhg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhg;->zzacs()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 239
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmn:Lcom/google/android/gms/internal/ads/zzaag;

    .line 240
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    check-cast v1, Ljava/lang/String;

    goto :goto_61

    .line 242
    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzabe()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 243
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmm:Lcom/google/android/gms/internal/ads/zzaag;

    .line 244
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    check-cast v1, Ljava/lang/String;

    goto :goto_61

    .line 246
    :cond_55
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaav;->zzcml:Lcom/google/android/gms/internal/ads/zzaag;

    .line 247
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    check-cast v1, Ljava/lang/String;

    .line 249
    :goto_61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkw()Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 250
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbfn;->zzzo()Lcom/google/android/gms/internal/ads/zzbbd;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbbd;->zzbpn:Ljava/lang/String;

    .line 251
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_76
    if-eqz v1, :cond_79

    return-object v1

    .line 255
    :cond_79
    :try_start_79
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelj:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 256
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdsh:Z

    .line 257
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzawn;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zze(Lcom/google/android/gms/internal/ads/zzbhr;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 260
    :cond_94
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzbv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 262
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlc()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzsy;)Lcom/google/android/gms/internal/ads/zzsx;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsx;->zzmv()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 264
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsx;->zzmw()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 265
    :cond_b6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_cf

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacg;->zzczr:Lcom/google/android/gms/internal/ads/zzabx;

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhf;->zze(Lcom/google/android/gms/internal/ads/zzbhr;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ce} :catch_d2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_79 .. :try_end_ce} :catch_d0

    return-object p1

    :cond_cf
    return-object v2

    :catch_d0
    move-exception p1

    goto :goto_d3

    :catch_d2
    move-exception p1

    .line 270
    :goto_d3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhf;->zzacd()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/net/Uri;)V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzepa:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzh(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzi(II)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzdef:Lcom/google/android/gms/internal/ads/zzapt;

    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapt;->zzi(II)V

    :cond_7
    return-void
.end method

.method public final zzum()V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 319
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzelp:Z

    const/4 v1, 0x1

    .line 320
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zzbpo:Z

    .line 321
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbf;->zzedl:Lcom/google/android/gms/internal/ads/zzdvi;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbhi;-><init>(Lcom/google/android/gms/internal/ads/zzbhf;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvi;->execute(Ljava/lang/Runnable;)V

    .line 322
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method
