.class final Lcom/google/android/gms/internal/ads/zzbaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzecd:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbah;Landroid/content/Context;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzecd:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbaj;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzecd:Landroid/content/Context;

    const-string v1, "admob_user_agent"

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    const-string v0, "Attempting to read user agent from Google Play Services."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzecd:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_1f

    :cond_13
    const-string v0, "Attempting to read user agent from local cache."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->val$context:Landroid/content/Context;

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1f
    const-string v1, "user_agent"

    const-string v3, ""

    .line 12
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const-string v3, "Reading user agent from WebSettings"

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbaj;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4a

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Persisting user agent."

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->zzeh(Ljava/lang/String;)V

    :cond_4a
    return-object v3
.end method
