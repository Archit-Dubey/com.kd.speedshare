.class public final Lcom/google/android/gms/internal/ads/zzekx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeku;
.implements Lcom/google/android/gms/internal/ads/zzelj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeku<",
        "TT;>;",
        "Lcom/google/android/gms/internal/ads/zzelj<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzips:Ljava/lang/Object;


# instance fields
.field private volatile zzeby:Ljava/lang/Object;

.field private volatile zzipt:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekx;->zzips:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekx;->zzips:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzeby:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzipt:Lcom/google/android/gms/internal/ads/zzelj;

    return-void
.end method

.method public static zzas(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "TT;>;"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzekx;

    if-eqz v0, :cond_8

    return-object p0

    .line 23
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzekx;-><init>(Lcom/google/android/gms/internal/ads/zzelj;)V

    return-object v0
.end method

.method public static zzat(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzeku;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/zzeku<",
            "TT;>;"
        }
    .end annotation

    .line 24
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzeku;

    if-eqz v0, :cond_7

    .line 25
    check-cast p0, Lcom/google/android/gms/internal/ads/zzeku;

    return-object p0

    .line 27
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekx;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzelg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzekx;-><init>(Lcom/google/android/gms/internal/ads/zzelj;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzeby:Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzekx;->zzips:Ljava/lang/Object;

    if-ne v0, v1, :cond_6e

    .line 7
    monitor-enter p0

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzeby:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzekx;->zzips:Ljava/lang/Object;

    if-ne v0, v1, :cond_69

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzipt:Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelj;->get()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzeby:Ljava/lang/Object;

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzekx;->zzips:Ljava/lang/Object;

    if-eq v1, v2, :cond_1f

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzeld;

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_64

    if-ne v1, v0, :cond_25

    goto :goto_64

    .line 14
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_64
    :goto_64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzeby:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzekx;->zzipt:Lcom/google/android/gms/internal/ads/zzelj;

    .line 18
    :cond_69
    monitor-exit p0

    goto :goto_6e

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :goto_6e
    return-object v0
.end method
