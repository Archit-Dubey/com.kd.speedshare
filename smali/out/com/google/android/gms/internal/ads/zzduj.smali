.class final Lcom/google/android/gms/internal/ads/zzduj;
.super Lcom/google/android/gms/internal/ads/zzdug;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdug<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsr;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdsr<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdvf<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdug;-><init>(Lcom/google/android/gms/internal/ads/zzdsr;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdub;->zzaww()V

    return-void
.end method


# virtual methods
.method public final synthetic zzj(Ljava/util/List;)Ljava/lang/Object;
    .registers 4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdta;->zzeo(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdui;

    if-eqz v1, :cond_1d

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdui;->value:Ljava/lang/Object;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 9
    :cond_22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
