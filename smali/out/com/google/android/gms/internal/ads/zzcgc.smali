.class final synthetic Lcom/google/android/gms/internal/ads/zzcgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgbi:Lcom/google/android/gms/internal/ads/zzcgd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgbi:Lcom/google/android/gms/internal/ads/zzcgd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->zzgbi:Lcom/google/android/gms/internal/ads/zzcgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgd;->zzamx()V

    return-void
.end method
