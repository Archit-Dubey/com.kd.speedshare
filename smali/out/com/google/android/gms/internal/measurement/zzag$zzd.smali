.class final Lcom/google/android/gms/internal/measurement/zzag$zzd;
.super Lcom/google/android/gms/internal/measurement/zzaa;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaa;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag$zzd;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag$zzd;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag$zzd;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhf;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
