.class final synthetic Lcom/google/android/gms/internal/ads/zzdhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdie;


# instance fields
.field private final zzgww:Lcom/google/android/gms/internal/ads/zzsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzgww:Lcom/google/android/gms/internal/ads/zzsf;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->zzgww:Lcom/google/android/gms/internal/ads/zzsf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsg;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zza(Lcom/google/android/gms/internal/ads/zzsf;)V

    return-void
.end method
