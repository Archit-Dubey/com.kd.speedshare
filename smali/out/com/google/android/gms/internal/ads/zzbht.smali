.class final synthetic Lcom/google/android/gms/internal/ads/zzbht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzepj:Lcom/google/android/gms/internal/ads/zzbhu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzepj:Lcom/google/android/gms/internal/ads/zzbhu;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzepj:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzacw()V

    return-void
.end method
