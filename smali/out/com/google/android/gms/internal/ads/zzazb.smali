.class final synthetic Lcom/google/android/gms/internal/ads/zzazb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeaj:Lcom/google/android/gms/internal/ads/zzayv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazb;->zzeaj:Lcom/google/android/gms/internal/ads/zzayv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazb;->zzeaj:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayv;->zzxs()V

    return-void
.end method
