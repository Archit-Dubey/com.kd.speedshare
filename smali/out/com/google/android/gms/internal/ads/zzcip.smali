.class public final Lcom/google/android/gms/internal/ads/zzcip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtg;


# instance fields
.field private final zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfn;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaav;->zzcnv:Lcom/google/android/gms/internal/ads/zzaag;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    return-void
.end method


# virtual methods
.method public final zzca(Landroid/content/Context;)V
    .registers 2

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz p1, :cond_7

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->onPause()V

    :cond_7
    return-void
.end method

.method public final zzcb(Landroid/content/Context;)V
    .registers 2

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz p1, :cond_7

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->onResume()V

    :cond_7
    return-void
.end method

.method public final zzcc(Landroid/content/Context;)V
    .registers 2

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzdfp:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz p1, :cond_7

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->destroy()V

    :cond_7
    return-void
.end method
