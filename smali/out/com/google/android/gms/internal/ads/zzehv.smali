.class final Lcom/google/android/gms/internal/ads/zzehv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field private static final zzihj:Lcom/google/android/gms/internal/ads/zzeht;

.field private static final zzihk:Lcom/google/android/gms/internal/ads/zzeht;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehv;->zzbgx()Lcom/google/android/gms/internal/ads/zzeht;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehv;->zzihj:Lcom/google/android/gms/internal/ads/zzeht;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzehw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehv;->zzihk:Lcom/google/android/gms/internal/ads/zzeht;

    return-void
.end method

.method static zzbgv()Lcom/google/android/gms/internal/ads/zzeht;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehv;->zzihj:Lcom/google/android/gms/internal/ads/zzeht;

    return-object v0
.end method

.method static zzbgw()Lcom/google/android/gms/internal/ads/zzeht;
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehv;->zzihk:Lcom/google/android/gms/internal/ads/zzeht;

    return-object v0
.end method

.method private static zzbgx()Lcom/google/android/gms/internal/ads/zzeht;
    .registers 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeht;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method
