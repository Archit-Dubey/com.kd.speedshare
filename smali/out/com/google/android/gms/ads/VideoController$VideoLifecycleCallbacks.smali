.class public Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .registers 1

    return-void
.end method

.method public onVideoMute(Z)V
    .registers 2

    return-void
.end method

.method public onVideoPause()V
    .registers 1

    return-void
.end method

.method public onVideoPlay()V
    .registers 1

    return-void
.end method

.method public onVideoStart()V
    .registers 1

    return-void
.end method
