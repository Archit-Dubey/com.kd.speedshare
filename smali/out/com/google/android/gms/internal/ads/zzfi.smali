.class public final Lcom/google/android/gms/internal/ads/zzfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final zzaag:Landroid/os/Handler;


# instance fields
.field private final zzaah:Landroid/content/Context;

.field private final zzaai:Landroid/os/PowerManager;

.field private final zzaaj:Landroid/app/KeyguardManager;

.field private zzaak:Landroid/content/BroadcastReceiver;

.field private zzaal:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private zzaam:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private zzaan:Lcom/google/android/gms/internal/ads/zzej;

.field private zzaao:B

.field private zzaap:I

.field private zzaaq:J

.field private zzyg:Landroid/app/Application;

.field private final zzys:Lcom/google/android/gms/internal/ads/zzev;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfi;->zzaag:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzev;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaao:B

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaap:I

    const-wide/16 v0, -0x3

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaah:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzys:Lcom/google/android/gms/internal/ads/zzev;

    const-string p2, "power"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaai:Landroid/os/PowerManager;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaah:Landroid/content/Context;

    const-string p2, "keyguard"

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaj:Landroid/app/KeyguardManager;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaah:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_3f

    .line 11
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzyg:Landroid/app/Application;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaah:Landroid/content/Context;

    check-cast p2, Landroid/app/Application;

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzej;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaan:Lcom/google/android/gms/internal/ads/zzej;

    :cond_3f
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfi;->zze(Landroid/view/View;)V

    return-void
.end method

.method private final getCurrentView()Landroid/view/View;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaam:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zza(Landroid/app/Activity;I)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaam:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 43
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 46
    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_24

    .line 49
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaap:I

    :cond_24
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzfi;)V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method private final zzcu()V
    .registers 3

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfi;->zzaag:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Lcom/google/android/gms/internal/ads/zzfi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzcw()V
    .registers 10

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaam:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, -0x3

    if-nez v0, :cond_13

    .line 82
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    .line 83
    iput-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaao:B

    return-void

    .line 85
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    .line 87
    :goto_1e
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_27

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    .line 89
    :cond_27
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaai:Landroid/os/PowerManager;

    if-eqz v7, :cond_34

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-nez v7, :cond_34

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    .line 91
    :cond_34
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzys:Lcom/google/android/gms/internal/ads/zzev;

    .line 92
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzev;->zzcc()Z

    move-result v7

    if-nez v7, :cond_68

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaj:Landroid/app/KeyguardManager;

    if-eqz v7, :cond_67

    .line 93
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfg;->zzd(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_63

    .line 98
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-nez v7, :cond_54

    const/4 v7, 0x0

    goto :goto_58

    .line 101
    :cond_54
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    :goto_58
    if-eqz v7, :cond_63

    .line 103
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_63

    const/4 v7, 0x1

    goto :goto_64

    :cond_63
    const/4 v7, 0x0

    :goto_64
    if-eqz v7, :cond_67

    goto :goto_68

    :cond_67
    const/4 v5, 0x0

    :cond_68
    :goto_68
    if-nez v5, :cond_6d

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 107
    :cond_6d
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_7b

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    .line 109
    :cond_7b
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_89

    or-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    .line 111
    :cond_89
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    .line 112
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaap:I

    if-eq v5, v1, :cond_92

    move v0, v5

    :cond_92
    if-eqz v0, :cond_97

    or-int/lit8 v0, v4, 0x40

    int-to-byte v4, v0

    .line 117
    :cond_97
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaao:B

    if-eq v0, v4, :cond_a9

    .line 118
    iput-byte v4, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaao:B

    if-nez v4, :cond_a4

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_a7

    :cond_a4
    int-to-long v0, v4

    sub-long v0, v2, v0

    .line 124
    :goto_a7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    :cond_a9
    return-void
.end method

.method private final zzf(Landroid/view/View;)V
    .registers 4

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaal:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 130
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaak:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_3b

    .line 133
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(Lcom/google/android/gms/internal/ads/zzfi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaak:Landroid/content/BroadcastReceiver;

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaah:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzyg:Landroid/app/Application;

    if-eqz p1, :cond_44

    .line 140
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaan:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    return-void
.end method

.method private final zzg(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 144
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaal:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1d

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaal:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1b

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 147
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 148
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :cond_1b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaal:Ljava/lang/ref/WeakReference;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1d

    .line 152
    :catch_1d
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 154
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    nop

    .line 159
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaak:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3a

    .line 160
    :try_start_33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaah:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_38

    .line 163
    :catch_38
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaak:Landroid/content/BroadcastReceiver;

    .line 164
    :cond_3a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzyg:Landroid/app/Application;

    if-eqz p1, :cond_43

    .line 165
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaan:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfi;->zza(Landroid/app/Activity;I)V

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfi;->zza(Landroid/app/Activity;I)V

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfi;->zza(Landroid/app/Activity;I)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcu()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfi;->zza(Landroid/app/Activity;I)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaap:I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfi;->zzf(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaap:I

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcw()V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzcu()V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfi;->zzg(Landroid/view/View;)V

    return-void
.end method

.method public final zzcv()J
    .registers 6

    .line 74
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const-wide/16 v0, -0x3

    .line 75
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    .line 76
    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    return-wide v0
.end method

.method final zze(Landroid/view/View;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfi;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfi;->zzg(Landroid/view/View;)V

    .line 19
    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaam:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_34

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    if-eqz v0, :cond_2c

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfi;->zzf(Landroid/view/View;)V

    .line 25
    :cond_2c
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-wide/16 v0, -0x2

    .line 26
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    return-void

    :cond_34
    const-wide/16 v0, -0x3

    .line 27
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfi;->zzaaq:J

    return-void
.end method
