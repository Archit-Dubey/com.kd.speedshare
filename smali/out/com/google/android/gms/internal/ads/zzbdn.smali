.class final synthetic Lcom/google/android/gms/internal/ads/zzbdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeak:I

.field private final zzeal:I

.field private final zzeii:Lcom/google/android/gms/internal/ads/zzbdi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdi;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzeii:Lcom/google/android/gms/internal/ads/zzbdi;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzeak:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzeal:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzeii:Lcom/google/android/gms/internal/ads/zzbdi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzeak:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzeal:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdi;->zzp(II)V

    return-void
.end method
