.class final synthetic Lcom/google/android/gms/internal/ads/zzbtk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwx;


# instance fields
.field private final zzclf:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtk;->zzclf:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtk;->zzclf:Landroid/content/Context;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtg;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbtg;->zzcc(Landroid/content/Context;)V

    return-void
.end method
