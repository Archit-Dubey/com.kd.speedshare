.class final synthetic Lcom/google/android/gms/internal/ads/zzcwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgon:Lcom/google/android/gms/internal/ads/zzcwj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgon:Lcom/google/android/gms/internal/ads/zzcwj;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgon:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwj;->zzapt()V

    return-void
.end method
