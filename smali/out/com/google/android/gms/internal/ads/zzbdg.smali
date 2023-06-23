.class public final Lcom/google/android/gms/internal/ads/zzbdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private zzdj:F

.field private zzeff:Z

.field private final zzeie:Landroid/media/AudioManager;

.field private final zzeif:Lcom/google/android/gms/internal/ads/zzbdf;

.field private zzeig:Z

.field private zzeih:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdf;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdj:F

    const-string v0, "audio"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeie:Landroid/media/AudioManager;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeif:Lcom/google/android/gms/internal/ads/zzbdf;

    return-void
.end method

.method private final zzzv()V
    .registers 6

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeff:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeih:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdj:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_32

    .line 24
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeig:Z

    if-nez v3, :cond_32

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeie:Landroid/media/AudioManager;

    if-eqz v0, :cond_2c

    if-eqz v3, :cond_21

    goto :goto_2c

    :cond_21
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 29
    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_2a

    const/4 v1, 0x1

    .line 30
    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeig:Z

    .line 31
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeif:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzys()V

    return-void

    :cond_32
    if-nez v0, :cond_4d

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeig:Z

    if-eqz v0, :cond_4d

    .line 34
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeie:Landroid/media/AudioManager;

    if-eqz v3, :cond_48

    if-nez v0, :cond_3f

    goto :goto_48

    .line 36
    :cond_3f
    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_46

    const/4 v1, 0x1

    .line 37
    :cond_46
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeig:Z

    .line 38
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeif:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzys()V

    :cond_4d
    return-void
.end method


# virtual methods
.method public final getVolume()F
    .registers 4

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeih:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdj:F

    .line 13
    :goto_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeig:Z

    if-eqz v2, :cond_e

    return v0

    :cond_e
    return v1
.end method

.method public final onAudioFocusChange(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 20
    :goto_5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeig:Z

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeif:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzys()V

    return-void
.end method

.method public final setMuted(Z)V
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeih:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzzv()V

    return-void
.end method

.method public final setVolume(F)V
    .registers 2

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzdj:F

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzzv()V

    return-void
.end method

.method public final zzzt()V
    .registers 2

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeff:Z

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzzv()V

    return-void
.end method

.method public final zzzu()V
    .registers 2

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzeff:Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzzv()V

    return-void
.end method
