.class final synthetic Lcom/google/android/gms/internal/ads/zzbgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeak:I

.field private final zzeal:I

.field private final zzemg:Z

.field private final zzemh:Z

.field private final zzeos:Lcom/google/android/gms/internal/ads/zzbgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgh;IIZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzeos:Lcom/google/android/gms/internal/ads/zzbgh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzeak:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzeal:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzemg:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzemh:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzeos:Lcom/google/android/gms/internal/ads/zzbgh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzeak:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzeal:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzemg:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbgj;->zzemh:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbgh;->zzb(IIZZ)V

    return-void
.end method
