.class public final Lcom/google/android/gms/internal/ads/zzdup;
.super Ljava/lang/Error;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Error;)V
    .registers 2
    .param p1    # Ljava/lang/Error;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
