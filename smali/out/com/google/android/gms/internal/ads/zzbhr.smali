.class public final Lcom/google/android/gms/internal/ads/zzbhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final url:Ljava/lang/String;

.field public final zzam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebResourceRequest;)V
    .registers 5

    .line 2
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbhr;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbhr;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhr;->url:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhr;->uri:Landroid/net/Uri;

    if-nez p3, :cond_b

    const-string p3, "GET"

    .line 13
    :cond_b
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhr;->method:Ljava/lang/String;

    if-nez p4, :cond_13

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhr;->zzam:Ljava/util/Map;

    return-void
.end method
