.class final synthetic Lcom/google/android/gms/internal/ads/zzclf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdfg:Ljava/lang/String;

.field private final zzgev:Lcom/google/android/gms/internal/ads/zzclc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclc;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzgev:Lcom/google/android/gms/internal/ads/zzclc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzdfg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzgev:Lcom/google/android/gms/internal/ads/zzclc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzdfg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzclc;->zzgh(Ljava/lang/String;)V

    return-void
.end method
