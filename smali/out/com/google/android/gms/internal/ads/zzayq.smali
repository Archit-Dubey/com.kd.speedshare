.class public Lcom/google/android/gms/internal/ads/zzayq;
.super Lcom/google/android/gms/internal/ads/zzayn;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayn;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    return p1
.end method

.method public final zzxo()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method
