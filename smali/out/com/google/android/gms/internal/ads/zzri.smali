.class public final Lcom/google/android/gms/internal/ads/zzri;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.2.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private started:Z

.field private final zzbrw:I

.field private final zzbry:I

.field private final zzbrz:Z

.field private zzbsw:Z

.field private zzbsx:Z

.field private final zzbsy:Lcom/google/android/gms/internal/ads/zzrf;

.field private final zzbsz:I

.field private final zzbta:I

.field private final zzbtb:I

.field private final zzbtc:I

.field private final zzbtd:I

.field private final zzbte:I

.field private final zzbtf:Ljava/lang/String;

.field private final zzbtg:Z

.field private final zzbth:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrf;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzri;-><init>(Lcom/google/android/gms/internal/ads/zzrf;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzrf;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->started:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsw:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsx:Z

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsy:Lcom/google/android/gms/internal/ads/zzrf;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacf;->zzczn:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbrw:I

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacf;->zzczk:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbta:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacf;->zzczo:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbry:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacf;->zzczm:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtb:I

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmr:Lcom/google/android/gms/internal/ads/zzaag;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtc:I

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcms:Lcom/google/android/gms/internal/ads/zzaag;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtd:I

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmt:Lcom/google/android/gms/internal/ads/zzaag;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbte:I

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacf;->zzczp:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabx;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsz:I

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmv:Lcom/google/android/gms/internal/ads/zzaag;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtf:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmw:Lcom/google/android/gms/internal/ads/zzaag;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtg:Z

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmx:Lcom/google/android/gms/internal/ads/zzaag;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbrz:Z

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaav;->zzcmy:Lcom/google/android/gms/internal/ads/zzaag;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbth:Z

    const-string p1, "ContentFetchTask"

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzri;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzrm;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 142
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1

    .line 143
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 145
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_4e

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_4e

    .line 146
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 149
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    .line 152
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzrc;->zzb(Ljava/lang/String;ZFFFF)V

    .line 153
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1

    .line 154
    :cond_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1

    .line 155
    :cond_4e
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_7a

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbfn;

    if-nez v1, :cond_7a

    .line 156
    check-cast p1, Landroid/webkit/WebView;

    .line 157
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v1

    if-nez v1, :cond_60

    const/4 p1, 0x0

    goto :goto_6c

    .line 159
    :cond_60
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzmd()V

    .line 160
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrk;

    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/zzrk;-><init>(Lcom/google/android/gms/internal/ads/zzri;Lcom/google/android/gms/internal/ads/zzrc;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    :goto_6c
    if-eqz p1, :cond_74

    .line 163
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1

    .line 164
    :cond_74
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1

    .line 165
    :cond_7a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9f

    .line 166
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    :goto_82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_99

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzri;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzrm;

    move-result-object v3

    .line 171
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzrm;->zzbto:I

    add-int/2addr v1, v4

    .line 172
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzrm;->zzbtp:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 174
    :cond_99
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1

    .line 175
    :cond_9f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzri;II)V

    return-object p1
.end method

.method private static zzmi()Z
    .registers 7

    const/4 v0, 0x0

    .line 111
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/internal/ads/zzre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzre;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v2, "activity"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    .line 117
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5f

    if-nez v3, :cond_21

    goto :goto_5f

    .line 121
    :cond_21
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_28

    return v0

    .line 124
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_2c

    .line 127
    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5f

    .line 129
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "power"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_58

    const/4 v1, 0x0

    goto :goto_5c

    .line 133
    :cond_58
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_60

    :goto_5c
    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    return v0

    :catchall_60
    move-exception v1

    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private final zzmk()V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 211
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsw:Z

    const/16 v2, 0x2a

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 45
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzri;->zzmi()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/internal/ads/zzre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzre;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzmk()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_6b

    goto :goto_62

    :cond_19
    if-eqz v0, :cond_62

    const/4 v1, 0x0

    .line 53
    :try_start_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_3b} :catch_7b

    move-object v1, v0

    goto :goto_4c

    :catch_3d
    move-exception v0

    .line 57
    :try_start_3e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_62

    if-nez v1, :cond_51

    goto :goto_62

    .line 63
    :cond_51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrl;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzrl;-><init>(Lcom/google/android/gms/internal/ads/zzri;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_62

    :cond_5a
    const-string v0, "ContentFetchTask: sleeping"

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzmk()V

    .line 69
    :cond_62
    :goto_62
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsz:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_6a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6a} :catch_6b

    goto :goto_81

    :catch_6b
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 75
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v1

    const-string v2, "ContentFetchTask.run"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_81

    :catch_7b
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :catch_84
    :goto_84
    :try_start_84
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsw:Z
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_96

    if-eqz v1, :cond_93

    :try_start_88
    const-string v1, "ContentFetchTask: waiting"

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_92} :catch_84
    .catchall {:try_start_88 .. :try_end_92} :catchall_96

    goto :goto_84

    .line 84
    :cond_93
    :try_start_93
    monitor-exit v0

    goto/16 :goto_0

    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_96

    goto :goto_9a

    :goto_99
    throw v1

    :goto_9a
    goto :goto_99
.end method

.method public final wakeup()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 206
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsw:Z

    .line 207
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    .line 208
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 209
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzrc;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 15

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzmc()V

    .line 177
    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    .line 179
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtg:Z

    if-nez p3, :cond_65

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_65

    .line 182
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    .line 184
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    .line 185
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    .line 186
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    .line 187
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzrc;->zza(Ljava/lang/String;ZFFFF)V

    goto :goto_7c

    .line 189
    :cond_65
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    .line 190
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    .line 191
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    .line 192
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    .line 193
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzrc;->zza(Ljava/lang/String;ZFFFF)V

    .line 194
    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzlx()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 195
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsy:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzb(Lcom/google/android/gms/internal/ads/zzrc;)Z
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_87} :catch_98
    .catchall {:try_start_3 .. :try_end_87} :catchall_88

    :cond_87
    return-void

    :catchall_88
    move-exception p1

    const-string p2, "Failed to get webview content."

    .line 201
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object p2

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_98
    const-string p1, "Json string may be malformed."

    .line 198
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    return-void
.end method

.method final zzj(Landroid/view/View;)V
    .registers 12

    .line 85
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzrc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbrw:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbta:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbry:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtc:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtd:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbte:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbrz:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzrc;-><init>(IIIIIIIZ)V

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkz()Lcom/google/android/gms/internal/ads/zzre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzre;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaav;->zzcmu:Lcom/google/android/gms/internal/ads/zzaag;

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwg;->zzpw()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaag;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbtf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    return-void

    .line 97
    :cond_53
    invoke-direct {p0, p1, v9}, Lcom/google/android/gms/internal/ads/zzri;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzrm;

    move-result-object p1

    .line 98
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzrc;->zzmf()V

    .line 99
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzrm;->zzbto:I

    if-nez v0, :cond_63

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzrm;->zzbtp:I

    if-nez v0, :cond_63

    return-void

    .line 101
    :cond_63
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzrm;->zzbtp:I

    if-nez v0, :cond_6e

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzrc;->zzmg()I

    move-result v0

    if-nez v0, :cond_6e

    return-void

    .line 103
    :cond_6e
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzrm;->zzbtp:I

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsy:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzrf;->zza(Lcom/google/android/gms/internal/ads/zzrc;)Z

    move-result p1

    if-eqz p1, :cond_7b

    return-void

    .line 105
    :cond_7b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsy:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzrf;->zzc(Lcom/google/android/gms/internal/ads/zzrc;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    .line 108
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzla()Lcom/google/android/gms/internal/ads/zzaxh;

    move-result-object v0

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzmh()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->started:Z

    if-eqz v1, :cond_e

    const-string v1, "Content hash thread already started, quiting..."

    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxv;->zzee(Ljava/lang/String;)V

    .line 40
    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->started:Z

    .line 42
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzri;->start()V

    return-void

    :catchall_16
    move-exception v1

    .line 42
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final zzmj()Lcom/google/android/gms/internal/ads/zzrc;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsy:Lcom/google/android/gms/internal/ads/zzrf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbth:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrf;->zzo(Z)Lcom/google/android/gms/internal/ads/zzrc;

    move-result-object v0

    return-object v0
.end method

.method public final zzml()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzbsw:Z

    return v0
.end method
