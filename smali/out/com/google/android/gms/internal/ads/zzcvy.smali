.class public final Lcom/google/android/gms/internal/ads/zzcvy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzcvw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgoi:Lcom/google/android/gms/internal/ads/zzcvw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcvw;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvy;->zzgoi:Lcom/google/android/gms/internal/ads/zzcvw;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzcvy;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcvy;-><init>(Lcom/google/android/gms/internal/ads/zzcvw;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvy;->zzgoi:Lcom/google/android/gms/internal/ads/zzcvw;

    if-eqz v0, :cond_d

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzelg;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvw;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    throw v0
.end method
