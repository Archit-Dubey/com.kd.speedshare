.class final Lcom/google/android/gms/internal/ads/zzbhk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzelz:Lcom/google/android/gms/internal/ads/zzavr;

.field private final synthetic zzepb:Lcom/google/android/gms/internal/ads/zzbhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhf;Lcom/google/android/gms/internal/ads/zzavr;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzepb:Lcom/google/android/gms/internal/ads/zzbhf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzelz:Lcom/google/android/gms/internal/ads/zzavr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzepb:Lcom/google/android/gms/internal/ads/zzbhf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhk;->zzelz:Lcom/google/android/gms/internal/ads/zzavr;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbhf;->zza(Lcom/google/android/gms/internal/ads/zzbhf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzavr;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
