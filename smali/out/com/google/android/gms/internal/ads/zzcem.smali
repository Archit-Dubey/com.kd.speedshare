.class public final Lcom/google/android/gms/internal/ads/zzcem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzela<",
        "Lcom/google/android/gms/internal/ads/zzanf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfzy:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcel;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzfzy:Lcom/google/android/gms/internal/ads/zzcel;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzfzy:Lcom/google/android/gms/internal/ads/zzcel;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzams()Lcom/google/android/gms/internal/ads/zzanf;

    move-result-object v0

    return-object v0
.end method
