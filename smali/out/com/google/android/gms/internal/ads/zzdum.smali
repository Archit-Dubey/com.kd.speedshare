.class final enum Lcom/google/android/gms/internal/ads/zzdum;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdum;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum zzhoh:Lcom/google/android/gms/internal/ads/zzdum;

.field private static final synthetic zzhoi:[Lcom/google/android/gms/internal/ads/zzdum;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdum;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdum;->zzhoh:Lcom/google/android/gms/internal/ads/zzdum;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdum;

    aput-object v0, v1, v2

    .line 7
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdum;->zzhoi:[Lcom/google/android/gms/internal/ads/zzdum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdum;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdum;->zzhoi:[Lcom/google/android/gms/internal/ads/zzdum;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdum;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
