.class public final Lcom/google/android/gms/internal/ads/zzdds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdec<",
        "Lcom/google/android/gms/internal/ads/zzddz<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzgue:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdir;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzgue:Z

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzgue:Z

    return-void
.end method


# virtual methods
.method public final zzaqm()Lcom/google/android/gms/internal/ads/zzdvf;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "Lcom/google/android/gms/internal/ads/zzddz<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzgue:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzddr;->zzgud:Lcom/google/android/gms/internal/ads/zzddz;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 7
    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdux;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdvf;

    move-result-object v0

    return-object v0
.end method
