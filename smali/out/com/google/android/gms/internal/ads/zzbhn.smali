.class final synthetic Lcom/google/android/gms/internal/ads/zzbhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztp;


# instance fields
.field private final zzeak:I

.field private final zzeoj:Z


# direct methods
.method constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzeoj:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzeak:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzty$zzi$zza;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzeoj:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzeak:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbho;->zza(ZILcom/google/android/gms/internal/ads/zzty$zzi$zza;)V

    return-void
.end method
