.class public final Lcom/google/android/gms/internal/ads/zzedw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# direct methods
.method public static zzbcq()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.Application"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    const/4 v0, 0x1

    :catch_8
    return v0
.end method
