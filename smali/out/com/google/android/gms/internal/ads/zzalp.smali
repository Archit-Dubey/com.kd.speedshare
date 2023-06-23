.class final synthetic Lcom/google/android/gms/internal/ads/zzalp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzall;


# static fields
.field static final zzdhh:Lcom/google/android/gms/internal/ads/zzall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalp;->zzdhh:Lcom/google/android/gms/internal/ads/zzall;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalm;->zze(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
