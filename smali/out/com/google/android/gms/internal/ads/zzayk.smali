.class final Lcom/google/android/gms/internal/ads/zzayk;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# instance fields
.field private final synthetic zzeaa:Lcom/google/android/gms/internal/ads/zzaye;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaye;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzeaa:Lcom/google/android/gms/internal/ads/zzaye;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaye;Lcom/google/android/gms/internal/ads/zzayg;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzaye;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzeaa:Lcom/google/android/gms/internal/ads/zzaye;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Lcom/google/android/gms/internal/ads/zzaye;Z)Z

    return-void

    .line 4
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzeaa:Lcom/google/android/gms/internal/ads/zzaye;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Lcom/google/android/gms/internal/ads/zzaye;Z)Z

    :cond_25
    return-void
.end method
