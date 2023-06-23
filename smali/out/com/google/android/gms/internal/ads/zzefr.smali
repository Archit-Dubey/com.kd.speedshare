.class final Lcom/google/android/gms/internal/ads/zzefr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# static fields
.field private static final zzibi:Lcom/google/android/gms/internal/ads/zzefq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzibj:Lcom/google/android/gms/internal/ads/zzefq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzibi:Lcom/google/android/gms/internal/ads/zzefq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefr;->zzbes()Lcom/google/android/gms/internal/ads/zzefq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzibj:Lcom/google/android/gms/internal/ads/zzefq;

    return-void
.end method

.method private static zzbes()Lcom/google/android/gms/internal/ads/zzefq;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefq;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzbet()Lcom/google/android/gms/internal/ads/zzefq;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzibi:Lcom/google/android/gms/internal/ads/zzefq;

    return-object v0
.end method

.method static zzbeu()Lcom/google/android/gms/internal/ads/zzefq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzefq<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzibj:Lcom/google/android/gms/internal/ads/zzefq;

    if-eqz v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
