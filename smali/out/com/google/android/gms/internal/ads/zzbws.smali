.class final synthetic Lcom/google/android/gms/internal/ads/zzbws;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwx;


# instance fields
.field private final zzeoj:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeoj:Z

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeoj:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbww;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbww;->zzbg(Z)V

    return-void
.end method
